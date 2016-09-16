require_relative 'field'

class Minesweeper

  def initialize(field = Field.new)
    @field = field
  end

  def get_pos

  end

  def get_choice

  end


  def play_turn
    render_field
    pos = get_pos
    choice = get_choice

    cell = field[pos]
    if choice == f
      cell.flagged = !cell.flagged
    else
      cell.checked = true
    end
  end

  def render_field
    @field.each do |row|
      row.each do |cell|
        p cell.state
      end
      puts
    end
  end

  def play
    until game_over
      play_turn
      render_field
    end
  end

  def game_over
    bomb_found || field_cleared
  end

end #exiting Minesweeper class

game = Minesweeper.new
# game.play
game.render_field
