require 'minitest/autorun'
require 'minitest/pride'
require './lib/turn'
require './lib/deck'
require './lib/card'

class DeckTest < Minitest::Test

  def setup
    @card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    @card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
    @card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
    @cards = [@card_1, @card_2, @card_3]
    @deck = Deck.new(@cards)
  end

  def test_it_exists

    assert_instance_of Deck, @deck
  end

  def test_it_initializes_with_card_objects

    assert_equal [@card_1, @card_2, @card_3], @deck.cards
  end

  def test_it_only_has_three_cards

    assert_equal 3, @deck.count
  end

  def test_it_can_return_cards_in_given_category

    assert_equal [@card_2, @card_3], @deck.cards_in_category(:STEM)
  end


    # pry(main)> deck.cards_in_category(:Geography)
    # #=> [#<Card:0x00007fa16104e160...>]
    #
    # pry(main)> deck.cards_in_category("Pop Culture")
    # #=> []

end
