# Lauch the game
class Game
  attr_accessor :current_player, :second_player, :status, :board, :players

  # Initializing the game
  def initialize
    # Creation of players
    print "What's the name of the player 1 ? "
    player_1 = gets.chomp
    print "What's the name of the player 2 ? "
    player_2 = gets.chomp
    @players = [] # Creating Array of Players
    @players << Player.new("#{player_1}", 'X')
    @players << Player.new("#{player_2}", 'O')
    @board = Board.new # Creating the board for the game
    @status = 'On Going' # Updating the status
    @current_player = @players[0]
    @second_player = @players[1]
  end

  def turn(player_team)
    i = 3 # Default Value to continu the game
    while end_game(i) == false
      puts "It's turn of #{@current_player.name}" if @current_player.value == player_team
      puts "its turn of #{@second_player.name}" if @second_player.value == player_team
      @board.play_turn(player_team) # The player select a action to do
      Show.new.show_state(@board.boardcase) # Creating the table
      i = @board.victory # Verify if the party is end
      if player_team == 'X' # Switching user
        player_team = 'O'
      else
        player_team = 'X'
      end
    end
    i
  end

  def end_game(return_value)
    return false if return_value == 3
    true
  end
end
