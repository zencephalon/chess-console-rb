class Pawn < Piece
  SYMBOL = ['♙', '♟']

  def initialize(color)
    @moved = false
    super
  end
end