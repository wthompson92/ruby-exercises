class TrickOrTreater

  def initialize(costume)
    @costume = costume.style
    @bag = []
    @sugar_level = 0
  end

  def dressed_up_as
    @costume
  end

  def bag
    @bag
  end

  def <<(candy)
    @bag << candy
  end

  def has_candy?
    if bag.length <= 0
      false
    else
      true
    end
  end

  def candy_count
    @bag.length
  end

  def eat
    @bag.pop
  end

  def sugar_level
    @sugar_level =
  end
end
