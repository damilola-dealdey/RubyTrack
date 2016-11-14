def letters_from_string(string)
  string.downcase.scan(/[a-z']/).reject { |c| c.empty? }
end