module LineMover
  def line(dir)
    moves = []
    d_r, d_c = dir
    row, col = 0, 0 
    while @board.in_bounds?(rel([row, col]))
      row += d_r
      col += d_c
      moves << [row, col] if @board.in_bounds?(rel([row, col]))
      
      if piece = @board.get(rel([row, col]))
        unless enemy?(piece)
          moves.pop
        end
        break
      end
    end
    moves
  end

  def moves
    self.class::DIRECTIONS.map do |dir|
      line(dir)
    end.flatten(1)
  end
end