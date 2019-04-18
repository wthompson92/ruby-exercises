class Horse
  attr_accessor :name
  attr_accessor :diet

  def initialize(name)
    @name = name
    @diet = []
   end

  def add_to_diet(food)
    @diet << food
    end
  end
