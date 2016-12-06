require 'prime'

class Fixnum
  def get_primes
    primes = []
    (0..self).step(1) { |num| primes << num if num.prime?  }
    primes
  end
end