class Times
  REGEX = /^(\d{1,2}):(\d\d):(\d\d)$/
  CONVERTER_CONSTANTS = [24*60*60,60*60,60,1]
  attr_accessor :hours, :minutes, :secs 
  def initialize t
    @hours = @minutes = @secs = 0     
    match = REGEX.match t
    if !match
      puts "Regex failed for (#{t})."
      return
    end
    @hours = Integer(match[1]) if Integer(match[1]) <= 23
    @minutes = Integer(match[2]) if Integer(match[2]) <=59
    @secs = Integer(match[3]) if Integer(match[3]) <= 59
  end

  def totalsecs
    (((@hours * 60) + @minutes) * 60 ) + @secs
  end

  def total_time_multi *t2
    t2_secs = 0
    t2.each do |time_val|
      t2_secs += Times.new(time_val).totalsecs
    end    
    convert_time (totalsecs + t2_secs)
  end

  def convert_time total_time
    index,result = -1,[]

    CONVERTER_CONSTANTS.inject(total_time) do |time_left, divisor|
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
