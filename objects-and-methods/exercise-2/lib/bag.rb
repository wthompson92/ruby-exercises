class Bag
  attr_accessor :candy, :count, :grab

  def initialize
    @candies = []
    @count = 0
  end

  def empty?
    if @candies.length > 0
      false
    else
      true
    end
  end


  def candies
    @candies
  end

  def <<(candy)
    @count += 1
    @candies << candy
  end

  def contains?(candy_type)
    @candies.one? do |candy|
      candy.type == candy_type
    end
  end

  def grab(treat)
    @count -= 1
   @candies.find {|candy| candy.type == treat}
 end

 def take(num)
     @count -= (num)
     @candies.take(num)
   end
  end
