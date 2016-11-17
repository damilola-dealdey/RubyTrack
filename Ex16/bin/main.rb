def search string, search_key
  count = 0
  result = string.gsub(/#{search_key}/i) do |word|
    count += 1
    "(" << word << ")"
  end
  puts result << "\nTotal occurences : #{count}"
end

str = "Can you can a can as a canner can can a can?"

search str,'can'
