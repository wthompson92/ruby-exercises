class Car

  attr_reader :color

  def initialize
    @mileage = 0
    @wheel_count = 4
  end

  def horn
    puts "BEEEEP"
  end

  def drive(distance)
    @milage = distance
    puts "I'm driving #{distance} miles!"
  end

  def wheel_count
    "This ride is sitting on a sweet #{@wheel_count} wheels!"
  end

  def start
    if !@started
      puts "Starting Up!"
      @started = true
    else
      puts "Nope!"
    end

    def color(color)
        puts "My car is #{@color}"
    @color = color
    end


end


my_car = Car.new
my_car.drive(6)
my_car.color("purple")
my_car.start
end
