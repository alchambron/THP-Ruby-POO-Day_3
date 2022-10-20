require_relative './player'
require_relative './board'
require_relative './board_case'
class Game
  attr_accessor :current_player, :status, :board, :players

  # Initializing the game
  def initialize
    #Creation of players
    puts "What's the name of the player 1 ?"
    player_1 = gets.chomp
    puts "What's the name of the player 2 ?"
    player_2 = gets.chomp
    @players = [] # Creating Array of Players
    @players << Player.new("#{player_1}", X)
    @players << Player.new("#{player_2}", O)
    @board = Board.new # Creating the board for the game
    @status = 'On Going' # Updating the status
  end

  def turn(player_team)
    

    




  end

  def new_round
    jj

  end

  def end_game(return_value)
    return false if return_value == 3
    return true

  end
end
