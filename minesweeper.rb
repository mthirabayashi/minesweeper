
class Minesweeper

  def initialize()
    @grid =
  end

  def get_pos

  end

  def get_choice

  end



  def play_turn
    pos = get_pos
    choice = get_choice
    cell = grid[pos]
    if choice == f
      cell.flagged = !cell.flagged
    else
      cell.checked = true
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