class Cell

  def initialize(bomb = false, flagged=false, checked=false, fringe_val = nil)
      @bomb = bomb
      @flagged = flagged
      @checked = checked
      @fringe_val = fringe_val
  end

end #end of Cell class
