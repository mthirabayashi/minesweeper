class Cell
  attr_accessor :state
  attr_reader :checked, :bomb

  def initialize(bomb = false, flagged=false, checked=false, fringe_val = nil, state = '*')
      @bomb = bomb
      @flagged = flagged
      @checked = checked
      @fringe_val = fringe_val
      @state = state
  end

  def update_state
    #update cell state based on cell values
    @state = "_" if @checked
    @state = "f" if @flagged
    @state = @fringe_val if !@fringe_val.nil? && @checked
    @state = "B" if @bomb
  end

  def to_s
    state
  end

  def toggle_flag
    @flagged = !@flagged
    update_state
  end

  def check_cell
    @checked = true
    update_state
  end

  def arm_bomb
    @bomb = true
    update_state
  end

end #end of Cell class
