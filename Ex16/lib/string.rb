class String
  def search search_key
    count = 0
    result = gsub(/#{search_key}/i) do |word|
      count += 1
      "(" << word << ")"
    end
    if count > 0
      puts "#{result}\nTotal occurences : #{count}"
    else
      puts "No match Found for '#{search_key}' in: #{self}"
    end    
  end
end