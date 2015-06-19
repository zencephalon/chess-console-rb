class Pawn < Piece
  SYMBOL = ['♙', '♟']

  def moves
    dir = (@color ? 1 : -1)
    single, double = [dir, 0], [dir * 2, 0]

    m = if @board.get(rel(single))
          []
        elsif @moved || @board.get(rel(double))
          [single]
        else
          [single, double]
        end

    [[dir, 1], [dir, -1]].each do |attack|
      m << attack if enemy?(@board.get(rel(attack)))
    end
    m
  end
end