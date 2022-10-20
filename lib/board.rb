class Board
  attr_accessor :boardcase, :count_turn

  # Initializing an array which create the case of the board
  def initialize
    @boardcase = []
    @boardcase << BoardCase.new('A1', ' ')
    @boardcase << BoardCase.new('A2', ' ')
    @boardcase << BoardCase.new('A3', ' ')
    @boardcase << BoardCase.new('B1', ' ')
    @boardcase << BoardCase.new('B2', ' ')
    @boardcase << BoardCase.new('B3', ' ')
    @boardcase << BoardCase.new('C1', ' ')
    @boardcase << BoardCase.new('C2', ' ')
    @boardcase << BoardCase.new('C3', ' ')
    @count_turn = 0
  end

  # Choosing the action to do
  def play_turn(value)
    puts 'What play do you want to do ?'
    action = gets.chomp
    @boardcase.each do |i|
      i.value = value if action == i.case_id
    end
    @count_turn += 1 # Counting the round
  end

  # Testing possibility if it's a win or not
  def victory
    # test for player 1
    return 1 if @boardcase[0].sign == 'X' && @boardcase[1].sign == 'X' && @boardcase[2].sign == 'X'
    return 1 if @boardcase[3].sign == 'X' && @boardcase[4].sign == 'X' && @boardcase[5].sign == 'X'
    return 1 if @boardcase[6].sign == 'X' && @boardcase[7].sign == 'X' && @boardcase[8].sign == 'X'
    return 1 if @boardcase[0].sign == 'X' && @boardcase[3].sign == 'X' && @boardcase[6].sign == 'X'
    return 1 if @boardcase[1].sign == 'X' && @boardcase[4].sign == 'X' && @boardcase[7].sign == 'X'
    return 1 if @boardcase[2].sign == 'X' && @boardcase[5].sign == 'X' && @boardcase[8].sign == 'X'
    return 1 if @boardcase[0].sign == 'X' && @boardcase[4].sign == 'X' && @boardcase[8].sign == 'X'
    return 1 if @boardcase[2].sign == 'X' && @boardcase[4].sign == 'X' && @boardcase[6].sign == 'X'
    # Test for player 2
    return 2 if @boardcase[0].sign == 'O' && @boardcase[1].sign == 'O' && @boardcase[2].sign == 'O'
    return 2 if @boardcase[3].sign == 'O' && @boardcase[4].sign == 'O' && @boardcase[5].sign == 'O'
    return 2 if @boardcase[6].sign == 'O' && @boardcase[7].sign == 'O' && @boardcase[8].sign == 'O'
    return 2 if @boardcase[0].sign == 'O' && @boardcase[3].sign == 'O' && @boardcase[6].sign == 'O'
    return 2 if @boardcase[1].sign == 'O' && @boardcase[4].sign == 'O' && @boardcase[7].sign == 'O'
    return 2 if @boardcase[2].sign == 'O' && @boardcase[5].sign == 'O' && @boardcase[8].sign == 'O'
    return 2 if @boardcase[0].sign == 'O' && @boardcase[4].sign == 'O' && @boardcase[8].sign == 'O'
    return 2 if @boardcase[2].sign == 'O' && @boardcase[4].sign == 'O' && @boardcase[6].sign == 'O'
    # Test for Null Match
    return 0 if @turn == 9

    3
  end
end
