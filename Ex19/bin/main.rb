require_relative('../lib/interest.rb')
int = Interest.new() do |interest|
  print "Please provide the principal amount: "
  interest.principal = Float(gets)
  print "Please provide the time (in years): " 
  interest.time = Float(gets)
end

int.calculate_interest