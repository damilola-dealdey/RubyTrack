require_relative 'employee'
class CSVFileProcessor
  def process
    filename = File.dirname(__FILE__) << '/file.csv'
    all_employees = []
    CSV.foreach(filename, headers: true) do |row|
      all_employees << Employee.new(row["Name"], row["EmpId"], row["Designation"])
    end
    all_employees
  end
end