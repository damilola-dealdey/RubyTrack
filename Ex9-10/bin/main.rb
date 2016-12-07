require_relative '../lib/array'
require_relative '../lib/fixnum'

#Question 9
sorted_hash = ['abc','def',1234,234,'abcd','x','mnop',5,'zZzZ'].sort_to_hash
puts sorted_hash

#Question 10
grouped_hash = ['abc','def',1234,234,'abcd','x','mnop',5,'zZzZ'].group_by_parity
puts grouped_hash