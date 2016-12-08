require_relative '../lib/string'

print "Please provide input string : "
str = gets
if str =~ /q/i
  puts 'Exiting ...'
else
  str.check_palindromes
end