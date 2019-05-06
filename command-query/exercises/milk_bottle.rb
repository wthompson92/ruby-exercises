class MilkBottle
  def initialize
    @full = true
    @spill_counter = 0
  end

  def full?
    if @spill_counter == 0
      @full = true
    elsif @spill_counter >= 1
      @full = false
    end
  

  def spill
    @spill_counter += 1
  end
end
