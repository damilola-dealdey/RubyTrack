class String

  def downcase?
    ('a'..'z').include? self
  end

  def upcase?
    ('A'..'Z').include? self
  end

end

