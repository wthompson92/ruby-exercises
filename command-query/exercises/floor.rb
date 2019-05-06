class Floor

  def initialize
    @dirty = true
    @clean = 0
  end

  def dirty?
    if @clean == 0
        @dirty
      elsif @clean >= 1
        @dirty = false
    end
  end

  def wash
    @clean += 1
  end
end
