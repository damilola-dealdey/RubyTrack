class String

  def replace_vowels
    self.gsub(/[aeiou]/i, "*")
  end
  
end