#(1) Metthod to Evaluate simple arithmetic
def evaluate a, operator , b
  a.send(operator,b)
end

puts evaluate 3,:*,2

#(2) Blocks and Yield
def do_block_stuff
  yield
end

do_block_stuff do
  puts 'Simple Block...'
end

def do_parameterized_block 
  yield(5)
end

do_parameterized_block do |number|
  puts "The square of #{number} is #{number ** 2}"
end