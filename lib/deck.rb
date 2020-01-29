class Deck
  attr_reader :cards

  def initialize(cards)
    @cards = cards
  end

  def count
    @cards.count
  end

  def cards_in_category(category)
    #take the deck of cards
    #search for all the cards that belong to given category
    #try to use each then a different enumerable
    stem_cards = []
    @cards.each do |card|
      if card.category == category
        stem_cards << card
      end
    end
    stem_cards
  end

end
