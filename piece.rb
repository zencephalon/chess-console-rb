class Piece
  attr_accessor :row, :col, :board

  def initialize(color)
    @color = color
  end

  def to_s
    @color == :white ? self.class::SYMBOL[0] : self.class::SYMBOL[1]
  end

  def rel(row, col)
    [@row + row, @col + col]
  end

  def enemy?(piece)
    piece && piece.color != @color
  end
end