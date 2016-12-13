class Interest
  attr_reader :rate 
  attr_accessor :principal ,:time
  @@rate = 0.1
  def initialize &block
    yield self
  end

  def calculate_interest
    n = 12
    si = @principal * (1 + @@rate * @time)
    si_i_only = @principal * @@rate * @time
    ci = @principal * ((1 + @@rate / n ) ** (n * @time))
    ci_i_only = ci - @principal
    display_result(si, si_i_only , ci, ci_i_only)
  end

  def display_result(si,si_i_only,ci,ci_i_only)
    puts "Principal : #{@principal} Money\nTime : #{@time} year(s)\nRate : #{@@rate}\%"
    puts "Calculating simple interest ..."
    puts "Simple Interest\nTotal Amount : #{si} money\nInterest : #{si_i_only} money"
    puts "Calculating compound interest ..."
    puts "Compound Interest\nTotal Amount : #{ci} money\nInterest : #{ci_i_only} money"
    puts "Difference : Compound Interest (#{ci} money) - Simple Interest (#{si} money) = #{ci - si} money"
  end

end
