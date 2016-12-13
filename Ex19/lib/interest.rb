class Interest
  attr_reader :rate 
  attr_accessor :principal ,:time
  @@rate = 0.1
  def initialize &block
    yield self
  end

  def calculate_interest
    calculate_simple_interest
    calculate_compound_interest
    display_result
  end

  def calculate_simple_interest    
    @simple_interest = @principal * (1 + @@rate * @time)
    @simple_interest_only = @principal * @@rate * @time
  end

  def calculate_compound_interest
    n = 12 
    @compound_interest = @principal * ((1 + @@rate / n ) ** (n * @time))
    @compound_interest_only = @compound_interest - @principal
  end

  def display_result
    puts "Principal : #{@principal} Money\nTime : #{@time} year(s)\nRate : #{@@rate}\%"
    puts "Simple Interest\nTotal Amount : #{@simple_interest} money\nInterest : #{@simple_interest_only} money"
    puts "Compound Interest\nTotal Amount : #{@compound_interest} money\nInterest : #{@compound_interest_only} money"
    puts "Difference : Compound Interest (#{@compound_interest} money) - Simple Interest (#{@simple_interest} money) = #{@compound_interest - @simple_interest} money"
  end

end
