#def something.method_name
money =  "money"

def money.convert_me
  puts "The money has been converted."
end

money.convert_me

#Wont work
#rope = "rope"
#rope.convert_me

#class << self

class << money
  def convert_me_again
    puts "I have been converted again!"
  end
end

money.convert_me_again