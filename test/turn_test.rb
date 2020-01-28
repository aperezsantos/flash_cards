require 'minitest/autorun'
require 'minitest/pride'
require './lib/turn'
require './lib/card'

class TurnTest < Minitest::Test

  def setup
    @card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    @turn = Turn.new("Juneau", @card)
  end

  def test_it_exists

    assert_instance_of Turn, @turn
  end

  def test_it_has_attributes

    assert_equal @card, @turn.card
    assert_equal "Juneau", @turn.guess
  end

  def test_guess_is_true_or_false

    assert_equal true, @turn.correct?
  end

  def test_it_can_give_feedback

    assert_equal "Correct!", @turn.feedback
  end
  
end
