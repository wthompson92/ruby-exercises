class Music
  def initialize
    @loud = false
    @volume_knob = 0
  end

  def loud?
    if @volume_knob == 0
      @loud = false
    elsif @volume_knob >= 1
      @loud = true
    end
  end

    def turn_up
      @volume_knob += 1
    end
end
