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

  def self.board(board_str)
    Board.new(board_str: board_str, parser: PIECE_PARSER)
  end
end