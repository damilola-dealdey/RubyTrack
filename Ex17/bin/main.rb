require_relative('../lib/times')
t1 = Times.new("11:77:07")
t2 = Times.new("22:53:45")

result = t1.total_time t2
p "#{result[0]} day(s) and #{result[1]}:#{result[2]}:#{result[3]}"