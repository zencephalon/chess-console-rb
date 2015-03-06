class Pawn < Piece
  SYMBOL = ['♙', '♟']

  def initialize(color)
    @moved = false
    super
  end

  def moves
    dir = (@color ? 1 : -1)
    single, double = [dir, 0], [dir * 2, 0]
    m = [single]
    m << double unless @moved
    m.delete(double) if @board.get(*rel(*double))
    if @board.get(*rel(*single))
      m.delete(single)
      m.delete(double)
    end
    [[dir, 1], [dir, -1]].each do |attack|
      m << attack if enemy?(@board.get(*rel(*attack)))
    end
    m
  end
end