# Calling Different Class
require_relative './game'
require_relative './show'
require_relative './board'
require_relative './player'
require_relative './board_case'

def perform

# Launching the Game
party = Game.new

while party.status == 'On Going'
  party_counter = 10
  final = party.turn(party.current_player.value)

  # Lauching the Ending Part
  if final == 1
    puts "#{party.players[0].name} is the winner"
  elsif final == 2
    puts "#{party.players[1].name} is the winner"
  elsif final == 3
    puts "It's a null match !"
  end

  # Asking to continue
  puts 'Do you want to restart the game ? (y/n)'
  restart = gets.chomp
  if restart == 'y'
    party.status = 'On Going'
  elsif restart == 'n'
    party.status = 'Ending'
  end

  # Ending Message
  system('clear')
  puts 'Thanks for Playing the game' if party.status == 'Ending'
end
end
