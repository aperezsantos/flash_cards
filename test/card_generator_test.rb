require 'minitest/autorun'
require 'minitest/pride'
require './lib/card_generator'
require './lib/card'

class CardGeneratorTest < Minitest::Test

  def test_it_exists
    cards = CardGenerator.new("cards.txt")

    assert_instance_of CardGenerator, cards
  end

  def test_it_has_file_path
    cards = CardGenerator.new("cards.txt")

    assert_equal "cards.txt", cards.file
  end

end
