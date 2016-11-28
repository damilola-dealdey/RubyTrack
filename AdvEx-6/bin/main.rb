class Mystring < String
  def excludes? str
    !(self.include? str)    
  end
end

print "String  to search through : "
str = String.new(gets)
#puts str

print "Sub-string to search for : "
substr = gets

# puts substr
# puts str.include? substr

puts str.send(:excludes?, substr)
#puts str.send(:include?, substr)

# out =  "the string contains the sub."
# out =  "The string doesnt contain the sub" if str.excludes? substr
# puts out