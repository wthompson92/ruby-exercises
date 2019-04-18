class Jackalope
  attr_accessor :name

  def initialize(name)
    @name = name
    @etymology = ["Jackrabbit", "Antelope"]
  end

  def etymology
    @etymology
  end
end
