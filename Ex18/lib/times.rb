def add_multi_time t1, *t2
  regex = /(\d?\d):(\d?\d):(\d?\d)/
  result = []
  match_t1 = regex.match t1
  t1_secs = (((Integer(match_t1[1]) * 60) + Integer(match_t1[2])) * 60 ) + Integer(match_t1[3])
  t2_secs = 0
  t2.each do |time_val|
    match_t2 = regex.match time_val
    if match_t2
      t2_secs += (((Integer(match_t2[1]) * 60) + Integer(match_t2[2])) * 60 ) + Integer(match_t2[3])
    end
  end

  total_time = t1_secs + t2_secs
  index = -1

  [24*60*60,60*60,60,1].inject(total_time) do |time_left, divisor|
    index += 1
    if time_left > 0
      r = time_left.divmod(divisor)
      result[index] = r[0]   
      r[1]
    else
      result[index] = 0
      time_left
    end
  end
  p "#{result[0]} day(s) and #{result[1]}:#{result[2]}:#{result[3]}"
end
