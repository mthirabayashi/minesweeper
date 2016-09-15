class Grid

  def initialize()

  end


  def [](pos)
    pos = x,y
    grid[x][y]
  end

  def []=(pos, value)
    x, y = pos
    tile = grid[x][y]
    tile.value = value
  end

end #end of Grid class
