class Octopus
  attr_accessor :cute, :weight
  attr_accessor :name
  def initialize(info, n)
    @cute = info[0]
    @weight = info[1]
    @name = info[2]
  end
end
