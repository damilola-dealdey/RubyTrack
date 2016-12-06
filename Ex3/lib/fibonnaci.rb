class Fibonnaci
  def generate_series(n1,n2)
    puts 'No code block' unless block_given?
    puts 'Let the series begin ...  below'
    puts n1
    begin
      yield n2
      n1, n2 = n2, (n2 + n1)
    end while n2 <= 1000
  end
end
