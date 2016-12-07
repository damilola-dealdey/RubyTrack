require_relative('../lib/fibonnaci')

fibonnaci = Fibonnaci.new
fibonnaci.generate_series(0,1,1000) do |n|  
  puts n  
end