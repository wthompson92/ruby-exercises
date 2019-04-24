class Rabbit
  attr_accessor :name,
                :num_syllables

  def initialize(info)
    @name = info.values[0]
    @num_syllables = info[1]
  end
end
