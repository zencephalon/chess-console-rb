require_relative 'line_mover'

class Rook < Piece
  include LineMover
  SYMBOL = ['♖', '♜']
  DIRECTIONS = [[1, 0], [-1, 0], [0, 1], [0, -1]]
  LENGTH = nil
end