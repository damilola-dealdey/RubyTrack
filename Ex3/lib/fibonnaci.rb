def fibonnaci
  puts 'No code block' unless block_given?
  yield 0, 1 if block_given?
end

