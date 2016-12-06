class Analyse
  @@lowcases = 'a'..'z'
  @@upcases = 'A'..'Z'
  @@digits = 0..9

  def run_analysis (str)
    result = Hash.new(0)
    str.each_char.each do |char|
      case char
      when @@lowcases then result[:lowercases] += 1
      when @@upcases then result[:upcases] += 1
      when @@digits then result[:digits] += 1
      else result[:specials] += 1
      end      
    end
    result
  end
end