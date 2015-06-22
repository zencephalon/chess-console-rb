class King < Piece
  include LineMover
  SYMBOL = ['♔', '♚']
  DIRECTIONS = [[1, 0], [-1, 0], [0, 1], [0, -1], [1, 1], [1, -1], [-1, 1], [-1, -1]]
  LENGTH = 1
end