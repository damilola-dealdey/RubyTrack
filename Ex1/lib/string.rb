class String

  def letters_from_string
    self.downcase.scan(/[a-z']/).reject { |c| c.empty? }
  end
  
end

def do_main_one
  print 'Excercise 1 (Please provide input string) : '
  @letters = gets().letters_from_string()
  alphabet_counts =  Hash.new(0)
  for letter in @letters do
    alphabet_counts[letter] +=1
  end
  alphabet_counts
end