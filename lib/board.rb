class Board
  def initialize(args)
    board_str = args.fetch(:board_str)
    @parser = args.fetch(:parser)
    @board = {}
    board_str ? parse!(board_str) : setup_standard_chess!
  end

  def parse!(board_str)
    lines = board_str.split("\n")
    @height = lines.size
    @width = lines.first.size
    lines.each_with_index do |line, row|
      line.split('').each_with_index do |square, col|
        white = (square.upcase == square)

        @parser.each do |pattern, piece_klass|
          set!([@height - row - 1, col], piece_klass.new(white)) if square.match(pattern)
        end
      end
    end
  end

  def set!((row, col), piece, move = false)
    piece.board = self
    piece.move!([row, col], move)
    @board[[row, col]] = piece
  end

  def move!((row, col), (d_row, d_col))
    piece = @board.delete([row, col])
    set!([row + d_row, col + d_col], piece, true)
  end

  def get((row, col))
    @board[[row, col]]
  end

  def setup_standard_chess!

  end

  def to_s
    (@height - 1).downto(0).map do |row|
      (0...@width).map do |col|
        piece = get([row, col])
        piece ? piece.to_s : " "
      end.join
    end.join("\n")
  end
end