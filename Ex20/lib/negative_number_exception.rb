class NegativeNumberException < StandardError
  def initialize(msg="Negative number provided")
    super
  end
end