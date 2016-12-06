require ('csv')
#require_relative ('../lib/employee')

print "Please provide file name? : "
filename = File.dirname(__FILE__) << '/main.csv'

data = CSV.open(filename, headers: true)

p data.headers
p data.read
p data.headers
guests = CSV.read(filename,headers:true) 
p guests
person = Class.new do |hash|
  attr_accessor *hash.keys

  def initialize(hash)
    hash.each do |key, value|
    instance_variable_set("@#{key}", value)
  end

end



# all_employees = []
# CSV.foreach(filename, headers: true) do |row|
#   all_employees << Employee.new(row["Name"], row["EmpId"], row["Designation"])
# end

# sorted_hash = all_employees.group_by { |emp| emp.Designation }

# File.open(File.dirname(__FILE__) << "/employees.txt", "w") do |file|
#   sorted_hash.each do | k, v , t = k.dup |
#     file.puts v.length > 1 ? t.pluralize : t
#     v.each { |emp| file.puts emp.formatted_to_s }
#   end
# end


