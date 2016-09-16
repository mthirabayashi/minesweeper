class Cell
  attr_accessor :state

  def initialize(bomb = false, flagged=false, checked=false, fringe_val = nil, state = '*')
      @bomb = bomb
      @flagged = flagged
      @checked = checked
      @fringe_val = fringe_val
      @state = state
  end

  def update_state
    #update cell state based on cell values
  end

end #end of Cell class
