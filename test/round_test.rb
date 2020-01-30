require 'minitest/autorun'
require 'minitest/pride'
require './lib/round'
require './lib/turn'
require './lib/deck'
require './lib/card'

class RoundTest < Minitest::Test
  def setup
    @card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    @card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
    @card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
    @deck = Deck.new([@card_1, @card_2, @card_3])
    @turn = Turn.new("Juneau", @card_1)
    @round = Round.new(@deck)
  end

  def test_it_exists

    assert_instance_of Round, @round
  end

  def test_it_has_deck

    assert_equal @deck, @round.deck
  end

  def test_it_starts_with_empty_turns

    assert_equal [], @round.turns
  end

  def test_current_card_is_first_in_deck

    assert_equal @card_1, @round.current_card
  end

  def test_it_creates_new_turn

    assert_equal "Juneau", @round.take_turn("Juneau").guess
    assert_equal @card_1, @round.take_turn("Juneau").card
    assert_equal Turn, @round.take_turn("Juneau").class
    assert_equal true, @round.take_turn("Juneau").correct?
  end

  def test_it_records_turns
    @round.take_turn("Juneau")

    assert_equal 1, @round.turns.length
    assert_equal Array, @round.turns.class
  end

end
