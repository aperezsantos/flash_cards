class Round
  attr_reader :deck, :turns

  def initialize(deck)
    @deck = deck
    @turns = []
  end

  def current_card
    @deck.cards.first
  end

  def take_turn(guess)
    new_turn = Turn.new(guess, current_card)
    #new_turn creates a new instance of Turn
    @turns << new_turn
    #because take_turn is also responsible for recording
    #turns, you would shovel new_turn into turns array
    #however, this will break the first part of the test
    #as the data type is different than what is asserted
    #to fix this, return the new_turn, as ruby returns the last line
    # @deck.cards.shift
    @deck.cards.shift
    new_turn
    #additionally, take_turn should shift the cards in the deck
    #and as before, new_turn should be return last
  end

end
