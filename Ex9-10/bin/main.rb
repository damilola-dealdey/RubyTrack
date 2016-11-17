require_relative '../lib/array'
require_relative '../lib/fixnum'

#Question 9
sorted_hash = ['abc','def',1234,234,'abcd','x','mnop',5,'zZzZ'].sort_to_hash
puts sorted_hash

#Question 10
def group_hash hash_to_group
  result = Hash.new { |h,k| h[k] = [] }

  hash_to_group.inject(0) { |c, (k,v)| result[k.parity] << v }

  result
end

p group_hash sorted_hash