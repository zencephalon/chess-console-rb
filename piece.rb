class Piece
  def initialize(row, col, color)
    @row, @col, @color = row, col, color
  end

  def to_s
    @color == :white ? self.class::SYMBOL[0] : self.class::SYMBOL[1]
  end
end