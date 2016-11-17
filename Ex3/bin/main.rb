require_relative('../lib/fibonnaci')
fibonnaci do |n1 , n2|
  puts 'Let the series begin ...  below'
  puts n1
  begin
    puts n2
    n1, n2 = n2, (n2 + n1)
  end while n2 <= 1000
end