def fibonnaci
  puts 'No code block' unless block_given?
  yield 0, 1 if block_given?
end


fibonnaci do |n1 , n2|
  puts 'Let the series begin ...  below'
  puts n1
  begin
    puts n2
    n1, n2 = n2, (n2 + n1)
  end while n2 <= 1000
end