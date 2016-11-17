require_relative('../lib/pascals')

pascals(6) do |i|
  c = 1
  (1..i).each do |subindex|
    print "#{c} "
    c = c * (i - subindex) / subindex
  end
end