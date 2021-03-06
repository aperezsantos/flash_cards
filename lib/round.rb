class Round
  attr_reader :deck, :turns

  def initialize(deck)
    @deck = deck
    @turns = []
  end

  def current_card
    @deck.cards.first
  end

  def take_turn(guess)
    turn = Turn.new(guess, current_card)
    @turns << turn
    @deck.cards.shift
    turn
  end

  def number_correct
    @turns.count do |turn|
      turn.correct?
    end
  end

  def number_correct_by_category(category)
    @turns.count do |turn|
      turn.correct? && turn.card.category == category
    end
  end

  def percent_correct
    percentage = (number_correct / @turns.length.to_f) * 100
    percentage.round(2)
  end

  def percent_correct_by_category(category)
    cards_by_category = []
    @turns.each do |turn|
       if turn.card.category == category
         cards_by_category << turn.card
       end
    end
    (number_correct_by_category(category).to_f / cards_by_category.length).round(2) * 100
  end

end
