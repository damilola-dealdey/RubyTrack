def pascals(limit)
  (1..limit).each do |i|
    yield(i)
  end
  puts ''
end