require 'prime'

def get_primes n
  primes = []
  (0..n).step(1) { |num| primes << num if num.prime?  }
  primes
end

p get_primes 9