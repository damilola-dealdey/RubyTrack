class Employee

  attr_accessor :Name, :EmpId, :Designation

  def initialize name, id, designation
    self.Name = name
    self.EmpId = id
    self.Designation = designation
  end

  def to_s
    "My name is #{@Name}. My employee Id is #{@EmpId} and i am a #{@Designation} "
  end

  def formatted_to_s
    "\t#{@Name} (EmpId: #{@EmpId})"
  end

end

class String
  
  def pluralize
    return (self << "s").capitalize if /[^aeiou]/ =~ self[self.length - 1]
    self
  end

end