class Teeth
  def initialize
    @clean = false
    @brusher = 0
  end

  def clean?
    if @brusher == 0
      @clean = false
    elsif @brusher >= 1
      @clean = true
    end
  end 

  def brush
    @brusher += 1
  end
end
