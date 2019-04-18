class Lion
  attr_accessor :name
  attr_accessor :sound
  def initialize(name)
    @name = name.values.first
  end
  def sound
    @sound = "roar"
end
end
