class Dog
  attr_accessor :name
  attr_accessor :breed
  attr_accessor :greeting

  def initialize(name, breed)
    @name = name
    @breed = breed
    @greeting = "Woof, I'm #{name} the #{breed}!"
  end


end
