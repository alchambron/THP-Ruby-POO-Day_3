require_relative './board'

class BoardCase < Board
  attr_accessor :value, :case_id

  def initialize(value, case_id)
    @value = value
    @case_id = case_id
  end
end
