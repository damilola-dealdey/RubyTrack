class Interest
  attr_reader :rate 
  attr_accessor :principal ,:time
  def initialize &block
    @rate, @block = 10.0, block
  end

  def calculate_interest
    @block.call(self)
    n = 12
    @rate = @rate / 100
    si = @principal * (1 + @rate * @time)
    si_i_only = @principal * @rate * @time
    ci = @principal * ((1 + @rate / n ) ** (n * @time))
    ci_i_only = ci - @principal
    puts "Principal : #{@principal} Money\nTime : #{@time} year(s)\nRate : #{@rate}\%"
    puts "Calculating simple interest ..."
    puts "Simple Interest\nTotal Amount : #{si} money\nInterest : #{si_i_only} money"
    puts "Calculating compound interest ..."
    puts "Compound Interest\nTotal Amount : #{ci} money\nInterest : #{ci_i_only} money"
    puts "Difference : Compound Interest (#{ci} money) - Simple Interest (#{si} money) = #{ci - si} money"
  end

end
