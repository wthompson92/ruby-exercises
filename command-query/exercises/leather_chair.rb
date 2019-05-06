class LeatherChair

  def initialize
    @faded = false
    @exposure = 0

  end

  def faded?
    if @exposure >= 1
      @faded = true
    elsif @exposure == 0
      @faded = false
    end
  end

  def expose_to_sunlight
    @exposure += 1
  end
end
