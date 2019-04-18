class Unicorn
  attr_accessor :name, :color

  def initialize(name, color = "white")
  @name = name
  @color = color
  end

  def white?
    if @color == "white"
      return true
    else
      return false
    end
  end

  def say(message)
    "**;* " + message + " **;*"
  end
end
