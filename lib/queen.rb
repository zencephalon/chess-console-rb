require_relative 'line_mover'

class Queen < Piece
  include LineMover
  SYMBOL = ['♕', '♛']
  DIRECTIONS = [[1, 0], [-1, 0], [0, 1], [0, -1], [1, 1], [1, -1], [-1, 1], [-1, -1]]
  LENGTH = nil
end