require_relative('../lib/pascals')

pascals = Pascals.new()
pascals.generate(6) do |i|
  print "#{i} "
end