require 'minitest/autorun'
require 'minitest/pride'
require './lib/card_generator'
require './lib/card'

class CardGeneratorTest < Minitest::Test

  def test_it_exists
    card_generator = CardGenerator.new('./lib/cards.txt')

    assert_instance_of CardGenerator, card_generator
  end

  def test_it_has_file_path
    card_generator = CardGenerator.new('./lib/cards.txt')

    assert_equal './lib/cards.txt', card_generator.file
  end

end
