class Teenager
  def initialize
    @drunk = false
    @drink_counter = 0
  end

  def drunk?
    if @drink_counter >= 1
      @drunk = true
    elsif @drink_counter == 0
      @drunk = false 
    end
  end

  def consume_an_alcoholic_beverage
    @drink_counter += 1
  end
end
