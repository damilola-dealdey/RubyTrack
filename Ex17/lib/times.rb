class Times
  REGEX = /^([0-2][0-3]):([0-5][0-9]):([0-5][0-9])$/
  CONVERTER = [24*60*60,60*60,60,1]
  attr_accessor :hours, :minutes, :secs 
  def initialize t
    @hours = @minutes = @secs = 0     
    match = REGEX.match t
    if !match
      #puts "Regex failed for (#{t}).. All values set to zero (0)"
      raise "Invalid Time Format"
      return
    end
    @hours = Integer(match[1]) if Integer(match[1]) <= 23
    @minutes = Integer(match[2]) if Integer(match[2]) <=59
    @secs = Integer(match[3]) if Integer(match[3]) <= 59
  end

  def totalsecs
    (((@hours * 60) + @minutes) * 60 ) + @secs
  end

  def total_time t2
    convert_time (totalsecs + t2.totalsecs)
  end

  def convert_time total_time
    index,result = -1,[]

    CONVERTER.inject(total_time) do |time_left, divisor|
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
    result   
  end

end
