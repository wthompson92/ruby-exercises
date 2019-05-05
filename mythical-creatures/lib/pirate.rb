class Pirate
  attr_reader :name,
              :job,
              :booty


  def initialize(name, job = "Scallywag")
    @name = name
    @job = job
    @cursed = false
    @heinous_acts = 0
    @booty = 0

  end

  def cursed?
    if @heinous_acts >= 3
      @cursed = true
    else @cursed = false

  end
end
def commit_heinous_act
  @heinous_acts += 1
end

def rob_ships
  @booty += 100
end

end
