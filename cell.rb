class Cell

  def initialize(bomb, flagged=false, checked=false, fringe_val)
      @bomb = bomb
      @flagged = flagged
      @checked = checked
      @fringe_val = fringe_val
  end

end #end of Cell class
