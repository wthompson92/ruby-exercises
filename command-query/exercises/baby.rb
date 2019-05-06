class Baby

  def initialize
    @tired = true
    @energy_level = 0
  end

  def tired?
    if @energy_level > 0
      @tired = false
    elsif @energy_level == 0
      @tired = true
    end
  end 
  def nap
    @energy_level += 1
  end
end
