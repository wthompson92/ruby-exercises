class Ferret
  attr_accessor :name
  def initialize(name = "a ferret has no name" )
    @name = name
  end

  def give_name(name)
    @name = "a ferret's name is #{name}"
    end
end
