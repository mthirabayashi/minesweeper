require_relative 'field'
require 'byebug'

class Minesweeper
  attr_accessor :field

  def initialize(field = Field.new)
    @field = field
    @check_cell_count = 0
  end

  def get_pos
    puts "Enter a cell coordinate in the form of x,y"
    pos = gets.chomp.split(",").map(&:to_i)

  end

  def get_choice
    puts "Do you want to reveal the cell (r) or flag the cell (f)?"
    choice = gets.chomp

  end


  def play_turn
    render_field
    pos = get_pos
    choice = get_choice
    # byebug
    cell = @field[pos]
    if choice == "f"
      cell.toggle_flag
    else
      cell.check_cell
      @check_cell_count += 1
    end
  end

  def render_field
    puts "  #{(0..8).to_a.join(" ")}"
    @field.grid.each_with_index do |row, i|
      puts "#{i} #{row.join(" ")}"
    end
  end


  # def render_field
  #   # p @field.field
  #   @field.field.each do |row|
  #
  #     # row.each do |cell|
  #
  #       # p cell.state
  #     # end
  #     puts row.join(" ")
  #   end
  # end

  def play
    until game_over
      play_turn
      render_field
    end
  end

  def game_over
    bomb_found || field_cleared
  end

  def bomb_found

  end

  def field_cleared
    if @checked_cell_count == 1
      @field.place_bombs
    end
    false
  end

end #exiting Minesweeper class

game = Minesweeper.new
# game.play
game.field.place_bombs
game.render_field
# game.render_field
