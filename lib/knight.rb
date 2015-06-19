class Knight < Piece
  SYMBOL = ['♘', '♞']

  def moves
    m = [[2, 1], [2, -1], [-2, 1], [-2, -1], [1, 2], [1, -2], [-1, 2], [-1, -2]]
    m = bounds_check(m)
    m.reject {|move| piece = @board.get(rel(move)); piece && ! enemy?(piece)}
  end
end