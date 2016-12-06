require_relative 'string'
class Employee

  attr :name, :empId , :designation

  def initialize name, id, designation
    @name = name
    @empId = id
    @designation = designation
  end

  def to_s
    "My name is #{@name}. My employee Id is #{@empId} and i am a #{@designation} "
  end

  def formatted_to_s
    "\t#{@name} (EmpId: #{@empId})"
  end

end
