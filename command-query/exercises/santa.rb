class Santa
  def initialize
    @fits = true
    @cookies = 0
  end

  def fits?
    if @cookies < 3
      @fits = true
    elsif @cookies >= 3
      @fits = false
    end
  end

  def eats_cookies
    @cookies += 1
  end
  
end
