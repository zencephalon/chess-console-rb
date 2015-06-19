require_relative 'line_mover'

class Bishop < Piece
  include LineMover
  SYMBOL = ['♗', '♝']
  DIRECTIONS = [[1, 1], [1, -1], [-1, 1], [-1, -1]]
  LENGTH = nil
end