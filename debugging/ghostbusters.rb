class Ghostbuster

  def initialize(name, car = "ECTO-1")
    @name = name
    @car = car
  end

  def say_my_name
    puts "I'm #{@name}"
  end

  def ride
    @car
  end
end

ghostbuster = Ghostbuster.new("Ray")
ghostbuster.say_my_name
puts ghostbuster.ride
