require './lib/round'
require './lib/turn'
require './lib/deck'
require './lib/card'


def start
  @card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
  @card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
  @card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
  @cards = [@card_1, @card_2, @card_3]
  @deck = Deck.new(@cards)
  @round = Round.new(@deck)
  @turns = [@turn1, @turn2, @turn3]

  puts "------------------------------------"
  puts "Welcome! You're playing with 3 cards."
  puts "------------------------------------"
  puts " "
  puts "This is card number 1 out of 3."
  puts " "
  puts "Question: #{@round.current_card.question}"
  puts "Guess:"
  @round.take_turn(gets.chomp)
  puts @round.turns.last.feedback
  puts "------------------------------------"
  puts " "
  puts "This is card number 2 out of 3."
  puts " "
  puts "Question: #{@round.current_card.question}"
  puts "Guess:"
  @round.take_turn(gets.chomp)
  puts @round.turns.last.feedback
  puts "------------------------------------"
  puts " "
  puts "This is card number 3 out of 3."
  puts " "
  puts "Question: #{@round.current_card.question}"
  puts "Guess:"
  @round.take_turn(gets.chomp)
  puts @round.turns.last.feedback
  puts "------------------------------------"
  puts "****** Thank you for playing! ******"
  puts "*********** Your Results ***********"
  puts "------------------------------------"
  puts "You had #{@round.number_correct} correct guesses out of 3 for a total score of #{@round.percent_correct}%"
  puts "Geography - #{@round.percent_correct_by_category(:Geography)}%"
  puts "STEM - #{@round.percent_correct_by_category(:STEM)}%"
end

puts start
