require 'csv'
require_relative '../lib/csv-file-processor'

all_employees = CSVFileProcessor.new().process

sorted_hash = all_employees.sort_by{ |emp| emp.name } .group_by { |emp| emp.designation }

File.open(File.dirname(__FILE__) << "/employees.txt", "w") do |file|
  sorted_hash.each do | k, v , t = k.dup |
    file.puts v.length > 1 ? t.pluralize : t
    v.each { |emp| file.puts emp.formatted_to_s }
  end
end 
