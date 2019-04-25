class Madlib

  def noun(noun)
    @noun = noun
  end

  def verb(verb)
    @verb = verb
  end

  def adjective(adjective)
    @adj = adjective
  end

  def adverb(adverb)
    @adverb = adverb

  end

  def result
  result = "Do you #{@verb} your #{@adj} #{@noun} #{@adverb}? That's hilarious!"
  end
end
