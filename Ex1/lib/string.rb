class String

  def letters_from_string
    self.downcase.scan(/[a-z']/).reject { |c| c.empty? }
  end
  
end