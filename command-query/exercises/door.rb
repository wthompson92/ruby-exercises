class Door
  def initialize
    @locked = true
    @locker = 0
  end

  def locked?
    if @locker >= 1
      @locked = false
    elsif @locker == 0
      @locked = true
    end
  end

  def unlock
    @locker += 1
  end
end
