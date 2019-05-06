class Tire
  def initialize
    @flat = false
    @blow_out_counter = 0
  end

  def flat?
    if @blow_out_counter == 0
      @flat = false
    elsif @blow_out_counter >= 1
      @flat = true
    end
  end

  def blow_out
    @blow_out_counter += 1
  end
end
