class Turn
  attr_reader :card, :guess

  def initialize(guess, card_object)
    @guess = guess
    @card = card_object
  end

  def correct?
      true
  end

  def feedback
    "Correct!"
  end

end
