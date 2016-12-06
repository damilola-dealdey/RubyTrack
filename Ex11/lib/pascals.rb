class Pascals
  def generate(limit)
    (1..limit).each do |i|
      c = 1
      (1..i).each do |subindex|
        yield c
        c = c * (i - subindex) / subindex
      end
      yield i
    end
    puts ''
  end
end
