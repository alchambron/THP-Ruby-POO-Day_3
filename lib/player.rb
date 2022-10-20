# Class which allow the user to stock data
class Player
  attr_accessor :name, :value

# Initializing information of users
  def initialize(name, value)
    @name = name
    @value = value
  end
end
