class Parrot
  attr_accessor :name,
                :known_words

  def initialize(info)
    @name = info.values[0]
    @known_words = info.values[1]
    @sound = "Squawk!"
  end

  def sound
    @sound
  end
  end
