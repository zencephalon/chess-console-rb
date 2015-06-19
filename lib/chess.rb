require 'piece'
require 'pawn'
require 'rook'
require 'knight'
require 'bishop'
require 'queen'
require 'king'
require 'board'

module Chess
  PIECE_PARSER = {
    /p/i => Pawn,
    /r/i => Rook,
    /n/i => Knight,
    /b/i => Bishop,
    /q/i => Queen,
    /k/i => King
  }

  STANDARD_BOARD = <<-chess
rnbqkbnr
pppppppp
........
........
........
........
PPPPPPPP
RNBQKBNR
  chess

  def self.board(board_str)
    Board.new(board_str: board_str, parser: PIECE_PARSER)
  end

  def self.standard_board
    board(STANDARD_BOARD)
  end
end