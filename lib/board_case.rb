class BoardCase
  attr_accessor :case_id, :value

  def initialize(case_id, value)
    @case_id = case_id
    @value = value
  end
end
