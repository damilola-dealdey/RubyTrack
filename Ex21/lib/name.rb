require_relative 'string')
require_relative 'empty_string_exception'
require_relative 'not_capitalized_exception'
class Name

  def initialize fname, lname
    self.first_name= fname
    self.last_name= lname
  end

  def first_name=(str)
    raise EmptyStringException, "First name cannot be empty", caller if str.empty?
    raise NotCapitalizedException, "The first letter of the first name should be capital" if !str[0].upcase?
    @first_name = str.capitalize
  end

  def last_name=(str)
    raise EmptyStringException, "Last name cannot be empty" if str.empty?
    @last_name = str.capitalize
  end

  def to_s
    "FNAME: #{@first_name} \nLNAME: #{@last_name}"
  end
  
end