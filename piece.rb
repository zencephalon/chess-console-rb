class Piece
  attr_accessor :row, :col

  def initialize(color)
    @color = color
  end

  def to_s
    @color == :white ? self.class::SYMBOL[0] : self.class::SYMBOL[1]
  end
end