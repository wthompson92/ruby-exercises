class Adult

  def initialize
    @sober = true
    @drink_counter = 0
  end

  def sober?
    if @drink_counter >= 3
     @sober = false
   else @sober = true
   end
 end
  def consume_an_alcoholic_beverage
    @drink_counter += 1
  end
end
