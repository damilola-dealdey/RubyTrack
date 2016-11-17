require_relative('../lib/interest.rb')
int = Interest.new() do |p, t, r|
  n = 12
  r = r / 100
  si = p * (1 + r * t)
  si_i_only = p * r * t
  ci = p * ((1 + r / n ) ** (n * t))
  ci_i_only = ci - p
  puts "Principal : #{p} Money\nTime : #{t} year(s)\nRate : #{r}\%"
  puts "Calculating simple interest ..."
  puts "Simple Interest\nTotal Amount : #{si} money\nInterest : #{si_i_only} money"
  puts "Calculating compound interest ..."
  puts "Compound Interest\nTotal Amount : #{ci} money\nInterest : #{ci_i_only} money"
  puts "Difference : Compound Interest (#{ci} money) - Simple Interest (#{si} money) = #{ci - si} money"
end

int.calculate