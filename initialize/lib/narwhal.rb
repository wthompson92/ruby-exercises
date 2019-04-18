class Narwhal
  attr_accessor :cute, :weight, :name
  def initialize(info)
    @cute = info.values[0]
    @weight = info.values[1]
    @name = info.values[2]
  end
end
