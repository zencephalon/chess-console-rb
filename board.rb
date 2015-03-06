class Board
  def initialize(board_str = nil)
    @board = {}
  end

  def set!(row, col, piece)
    piece.row = row
    piece.col = col
    @board[[row, col]] = piece
  end

  def get(row, col)
    @board[[row, col]]
  end

  def setup_standard_chess!

  end

  def to_s

  end
end