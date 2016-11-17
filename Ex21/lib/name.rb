class String

  def downcase?
    ('a'..'z').include? self
  end

  def upcase?
    ('A'..'Z').include? self
  end

end


class Name

  attr_accessor :first_name, :last_name

  def initialize fname, lname
    self.first_name = fname
    self.last_name = lname
  end

  def first_name=(str)
    raise ArgumentError, "First name cannot be empty" if str.empty?
    raise ArgumentError, "The first letter of the first name should be capital" if !str[0].upcase?
    @first_name = str.capitalize
  end

  def last_name=(str)
    raise ArgumentError, "Last name cannot be empty" if str.empty?
    raise ArgumentError, "The first letter of the last name should be capital" if !str[0].upcase?
    @last_name = str.capitalize
  end

  def to_s
    "FNAME: #{@first_name} \nLNAME: #{@last_name}"
  end
  
end