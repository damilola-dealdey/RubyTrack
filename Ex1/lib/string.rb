class String

  def hash_count
    @sc = downcase.scan(/[a-z']/).reject { |c| c.empty? }
    alphabet_counts =  Hash.new(0)
    for letter in @sc do
      alphabet_counts[letter] +=1
    end
    alphabet_counts
  end
  
end