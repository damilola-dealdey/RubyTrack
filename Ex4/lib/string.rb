class String

  def palindrome?
    self == reverse
  end

  def check_palindromes
    chomp!
    if palindrome?
      puts 'Word is palindrome'
    else
      puts 'Word is NOT palindrome'
    end
  end
  
end

