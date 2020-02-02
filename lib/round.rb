class Round
  attr_reader :deck, :turns

  def initialize(deck)
    @deck = deck
    @turns = []
  end

  def current_card
    @deck.cards.first
  end

  def take_turn(guess, current_card)
    turn = Turn.new(guess, current_card)
    @turns << turn
    @deck.cards.shift
    turn
  end
  
end
