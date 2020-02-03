require './lib/round'
require './lib/turn'
require './lib/deck'
require './lib/card'
require './lib/card_generator'


def start
  @card_generator = CardGenerator.new("./lib/cards.txt")
  @deck = Deck.new(@card_generator.cards)
  @round = Round.new(@deck)

  require "pry"; binding.pry

  puts "------------------------------------"
  puts "Welcome! You're playing with #{@deck.cards.length} cards."
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
