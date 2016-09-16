require_relative 'cell'

class Field
  attr_reader :grid
  def self.grid_generate
    Array.new(9) {Array.new(9) { Cell.new } }
  end

  def initialize(grid = Field.grid_generate)
    @grid = grid
  end

  def place_bombs(pos)
    # randomly assign bombs on grid - pos
  end

  def calculate_fringe
    @grid.each_index do |x|
      row.each_index do |y|
        @grid[x][y].fringe = check_cell_neighbors(x, y)
      end
    end
  end

  def check_cell_neighbors(pos)
    # check perimeter of 8 neighboring cells centered at pos
    # return sum total number of bombs

  end


# @grid[](pos) === @grid([pos])
  def [](pos)
    x,y = pos
    grid[x][y]
  end

  def []=(pos, value)
    x,y = pos
    tile = grid[x][y]
    tile.value = value
  end

end #end of Field class
