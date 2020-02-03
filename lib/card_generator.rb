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
  end
end
