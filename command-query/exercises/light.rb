class Light
  def initialize
    @on = false
    @switch = 0
  end

  def on?
    if @switch > 0
      @on = true
    elsif @switch == 0
      @on = false
    end
  end

  def turn_on
    @switch += 1
  end

end
