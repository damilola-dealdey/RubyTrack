def analyse(str)
  lowcases = ('a'..'z')
  upcases = ('A'..'Z')
  digits = (0..9)

  result = Hash.new(0)
  str.each_char.each do |char|
    if lowcases.include? char
      result["lowercases"] += 1
    elsif upcases.include? char
      result["upcases"] += 1
    elsif digits.include? char
      result["digits"] += 1
    else
      result["specials"] += 1
    end
  end
  result
end