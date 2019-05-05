class Centaur
  attr_reader :name,
              :breed


  def initialize(name, breed)
    @name = name
    @breed = breed
    @cranky = false
    @standing = true
    @shoot_counter = 0
    @run_counter = 0
    @laying = false
    @rested = false
    @sick = false
  end

  def cranky?
    @cranky = true if @shoot_counter >= 3 || @run_counter >= 1
       @cranky
  end


  def shoot
    if cranky?
      "NO!"
    else
      @shoot_counter += 1
        "Twang!!!"
    end
  end

  def run
    if cranky?
      "NO!"
    else
      @run_counter += 1
      "Clop clop clop clop!!!"
    end
  end



  def standing?
   @standing
 end

  def sleep
    @cranky = false
    @shoot_counter = 0
    @run_counter = 0
  if standing?
    "NO!"
  end
end

def laying?
  @laying
end

  def lay_down
    @laying = true
    @standing = false
    @cranky = true

  end

def stand_up
  @standing = true
end

def rested?
    @rested
  end

  def sick?
    @sick
  end

def drink_potion
   @rested = true
 end
end
