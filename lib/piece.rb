class Piece
  attr_accessor :row, :col, :board

  # true == white
  def initialize(color)
    @color = color
    @moved = false
  end

  def to_s
    @color ? self.class::SYMBOL[0] : self.class::SYMBOL[1]
  end

  def move!((row, col), move = true)
    @moved ||= move
    @row, @col = row, col
  end

  def rel((row, col))
    [@row + row, @col + col]
  end

  def enemy?(piece)
    piece && piece.color != @color
  end
end