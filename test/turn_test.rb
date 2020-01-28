require 'minitest/autorun'
require 'minitest/pride'
require './lib/turn'
require './lib/card'

class TurnTest < Minitest::Test

  def setup
    @card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    @card_2 = Card.new("Which planet is closest to the sun?", "Mercury", :STEM)
    @turn_1 = Turn.new("Juneau", @card_1)
    @turn_2 = Turn.new("Saturn", @card_2)
  end

  def test_it_exists

    assert_instance_of Turn, @turn_1
  end

  def test_it_has_attributes

    assert_equal @card_1, @turn_1.card
    assert_equal "Juneau", @turn_1.guess
  end

  def test_it_returns_true_or_false_based_on_guess

    assert_equal true, @turn_1.correct?
    assert_equal false, @turn_2.correct?
  end

  def test_it_gives_feedback_based_on_guess

    assert_equal "Correct!", @turn_1.feedback
    assert_equal "Incorrect.", @turn_2.feedback
  end

end
