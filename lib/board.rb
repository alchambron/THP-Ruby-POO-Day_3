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
    return 1 if @boardcase[0].value == 'X' && @boardcase[1].value == 'X' && @boardcase[2].value == 'X'
    return 1 if @boardcase[3].value == 'X' && @boardcase[4].value == 'X' && @boardcase[5].value == 'X'
    return 1 if @boardcase[6].value == 'X' && @boardcase[7].value == 'X' && @boardcase[8].value == 'X'
    return 1 if @boardcase[0].value == 'X' && @boardcase[3].value == 'X' && @boardcase[6].value == 'X'
    return 1 if @boardcase[1].value == 'X' && @boardcase[4].value == 'X' && @boardcase[7].value == 'X'
    return 1 if @boardcase[2].value == 'X' && @boardcase[5].value == 'X' && @boardcase[8].value == 'X'
    return 1 if @boardcase[0].value == 'X' && @boardcase[4].value == 'X' && @boardcase[8].value == 'X'
    return 1 if @boardcase[2].value == 'X' && @boardcase[4].value == 'X' && @boardcase[6].value == 'X'
    # Test for player 2
    return 2 if @boardcase[0].value == 'O' && @boardcase[1].value == 'O' && @boardcase[2].value == 'O'
    return 2 if @boardcase[3].value == 'O' && @boardcase[4].value == 'O' && @boardcase[5].value == 'O'
    return 2 if @boardcase[6].value == 'O' && @boardcase[7].value == 'O' && @boardcase[8].value == 'O'
    return 2 if @boardcase[0].value == 'O' && @boardcase[3].value == 'O' && @boardcase[6].value == 'O'
    return 2 if @boardcase[1].value == 'O' && @boardcase[4].value == 'O' && @boardcase[7].value == 'O'
    return 2 if @boardcase[2].value == 'O' && @boardcase[5].value == 'O' && @boardcase[8].value == 'O'
    return 2 if @boardcase[0].value == 'O' && @boardcase[4].value == 'O' && @boardcase[8].value == 'O'
    return 2 if @boardcase[2].value == 'O' && @boardcase[4].value == 'O' && @boardcase[6].value == 'O'
    # Test for Null Match
    return 0 if @count_turn == 9

    3
  end
end
