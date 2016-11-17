require ('csv')
require_relative ('../lib/employee')

filename = File.dirname(__FILE__) << '/file.csv'

all_employees = []
CSV.foreach(filename, headers: true) do |row|
  all_employees << Employee.new(row["Name"], row["EmpId"], row["Designation"])
end

sorted_hash = all_employees.group_by { |emp| emp.Designation }

File.open(File.dirname(__FILE__) << "/employees.txt", "w") do |file|
  sorted_hash.each do | k, v , t = k.dup |
    file.puts v.length > 1 ? t.pluralize : t
    v.each { |emp| file.puts emp.formatted_to_s }
  end
end
