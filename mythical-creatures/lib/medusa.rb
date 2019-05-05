class Medusa
  attr_reader :name,
              :statues

  def initialize(name)
    @name = name
    @@statues = []

  end

  def stare(victim)
    @statues << victim
    victim.stoned?

end
end

class Person
  attr_reader :name

  def initialize(name)
    @name = name
    @stoned = false
  end

  def stoned?
    if @@statues.include?(@name)
      @stoned = true
    end
    @stoned

  end
end
