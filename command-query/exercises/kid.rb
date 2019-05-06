class Kid
  def initialize
    @sugar_level = 0
    @hyperactive = false
  end

    def grams_of_sugar_eaten
      @sugar_level
    end 
  def eat_candy
    @sugar_level += 5
  end

  def hyperactive?
    if @sugar_level >= 60
      @hyperactive = true
    elsif @sugar_level < 60
      @hyperactive = false
    end
  end
end
