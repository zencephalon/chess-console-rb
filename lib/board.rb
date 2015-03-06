require_relative 'piece'
require_relative 'pawn'

class Board
  def initialize(board_str = nil)
    @board = {}
    board_str ? parse!(board_str) : setup_standard_chess!
  end

  def parse!(board_str)
    lines = board_str.split("\n")

    lines.each_with_index do |line, row|
      line.split('').each_with_index do |square, col|
        white = (square.upcase == square)

        case square
        when /p/i
          set!(lines.size - row - 1, col, Pawn.new(white))
        end
      end
    end
  end

  def set!(row, col, piece)
    piece.row = row
    piece.col = col
    piece.board = @board
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