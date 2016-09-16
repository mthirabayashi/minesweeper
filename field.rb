require_relative 'cell'

class Field

  def self.field_generate
    Array.new(9) {Array.new(9) { Cell.new } }
  end

  def initialize(field = self.field_generate)
    @field = field
  end

  def place_bombs(pos)
    # randomly assign bombs on field - pos
  end

  def calculate_fringe
    @field.each_index do |x|
      row.each_index do |y|
        @field[x][y].fringe = check_cell_neighbors(x, y)
      end
    end
  end

  def check_cell_neighbors(pos)
    # check perimeter of 8 neighboring cells centered at pos
    # return sum total number of bombs

  end


  def [](pos)
    pos = x,y
    field[x][y]
  end

  def []=(pos, value)
    x, y = pos
    tile = field[x][y]
    tile.value = value
  end

end #end of field class
