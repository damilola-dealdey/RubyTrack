class Factorial
  def do_factorial (n)
    return 1 if n < 2
    (1..n).inject(:*)
  end
end