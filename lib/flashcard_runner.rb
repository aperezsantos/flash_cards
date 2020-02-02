# Inside of this file, write the code to do the following:
#
# Create some Cards
# Put those card into a Deck
# Create a new Round using the Deck you created
# Start the round using a new method called start

require './lib/round'
require './lib/turn'
require './lib/deck'
require './lib/card'


def start
  @card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
  @card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
  @card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
  @cards = [@card_1, @card_2, @card_3]
  @deck = Deck.new(@cards)
  @round = Round.new(@deck)
  @turns = [@turn1, @turn2, @turn3]
end

puts start
