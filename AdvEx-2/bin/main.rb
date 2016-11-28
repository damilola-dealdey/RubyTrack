puts 'Interactively ...'
to_eval = gets
while !(to_eval =~ /q/i)
  puts eval(to_eval)
  to_eval = gets
end

puts 'Quitting ... '