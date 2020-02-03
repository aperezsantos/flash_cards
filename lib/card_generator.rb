require_relative 'card'

class CardGenerator
  attr_reader :file

  def initialize(file)
    @file = file
  end

  def cards
    @alternative_cards = []
    @split_data = []

    File.open(file).each do |line|
      @split_data << line.chomp.split(",")
    end

    @split_data.each do |element|
      question = element[0]
      answer = element[1]
      category = element[2]

      card = Card.new(question, answer, category)
      @alternative_cards << card
    end
  end
end
