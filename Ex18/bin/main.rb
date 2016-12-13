require_relative('../lib/times')

t1 = Times.new("11:69:07")
t2,t3,t4 = "22:53:45","0:23:23","23:45:56"

result = t1.total_time_multi t2,t3,t4
p "#{result[0]} day(s) and #{result[1]}:#{result[2]}:#{result[3]}"