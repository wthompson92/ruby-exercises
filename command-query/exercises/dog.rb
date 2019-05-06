class Dog
  def initialize
    @hungry = true
    @food_counter = 0
  end

  def hungry?
    if @food_counter == 0
      @hungry = true
    elsif
      @food_counter >= 1
      @hungry = false
    end
  end
  def eat
    @food_counter += 1
  end
end
