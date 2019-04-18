class Dog
  attr_accessor :name
  attr_accessor :breed

  def initialize(name, breed)
    @name = name
    @breed = breed
  end

  def greeting
    puts "Woof, I'm #{name} the #{breed}"
  end
end
