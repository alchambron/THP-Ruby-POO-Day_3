class Show
  attr_accessor :final_table

  # Creation of graphic
  def show_state(boardcase)
    @final_table = boardcase
    puts @final_table[1].value
    puts
    puts
    puts
    puts
    puts '                    1        2        3'
    puts
    puts "             a      #{@final_table[0].value}   |    #{@final_table[1].value}   |   #{@final_table[2].value}"
    puts '                 -------------------------'
    puts "             b      #{@final_table[3].value}   |    #{@final_table[4].value}   |   #{@final_table[5].value}"
    puts '                 -------------------------'
    puts "             c      #{@final_table[6].value}   |    #{@final_table[7].value}   |   #{@final_table[8].value}"
    puts
    puts
    print '                  Press Enter to continue'
    temp = gets.chomp
    system('clear') if temp == ''
  end
end
