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

  def test_it_can_create_and_track_turns
    turn1 = @round.take_turn("Juneau")

    assert_instance_of Turn, turn1
    assert_equal [turn1], @round.turns

    turn2 = @round.take_turn("Pluto")

    assert_instance_of Turn, turn2
    assert_equal [turn1, turn2], @round.turns
  end

  def test_take_turn_shifts_cards_in_deck
    @round.take_turn("Pluto")

    assert_equal @card_2, @round.current_card

    @round.take_turn("I don't know")

    assert_equal @card_3, @round.current_card
  end

end
