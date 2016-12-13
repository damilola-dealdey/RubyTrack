require_relative'../lib/negative_number_exception'

class Factorial
  def calculate n    
    begin
      raise NegativeNumberException, "Negative number" if n < 0
      p (1..n).inject(:*)
    rescue NegativeNumberException
      p "Cannot calculate factorial for negative numbers"
    rescue Exception
      p Exception
    end
  end
end