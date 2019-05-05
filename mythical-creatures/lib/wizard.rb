class Wizard
  attr_reader :name

  def initialize(name, bearded: true)
    @name = name
    @bearded = bearded
    @rested = true
    @counter = 0
  end

  def bearded?
    @bearded
  end

  def incantation(power)
    return "sudo" + " "  + power
  end

  def rested?
    if @counter >= 3
      @rested = false
    else @rested
    end
    @rested


  end

  def cast
    @counter +=1
    return "MAGIC MISSLE!"

  end

end
