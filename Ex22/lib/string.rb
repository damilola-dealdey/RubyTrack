class String
  
  def pluralize
    return (self << "s").capitalize if /[^aeiou]/ =~ self[self.length - 1]
    self
  end

end