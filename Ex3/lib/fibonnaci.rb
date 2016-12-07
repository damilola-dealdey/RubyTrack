class Fibonnaci
  def generate_series(n1,n2,max)
    unless block_given?
      puts 'No code block'
      return
    end
    puts 'Let the series begin ...  below'
    puts n1
    begin
      yield n2
      n1, n2 = n2, (n2 + n1)
    end while n2 <= max
  end
end
