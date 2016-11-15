require_relative '../lib/string'

def check_palindromes
  print "Please provide input string : "
  text = gets().chomp!
  if text =~ /q/i
    puts 'Exiting ...'
    return
  end
  if text.palindrome?
    puts 'Word is palindrome'
  else
    puts 'Word is NOT palindrome'
  end
end

check_palindromes