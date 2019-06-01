require 'prime'

# Euler program 1
# Sum of primes
# 2_000_000 = 2,000,000 
prime_array = Prime.take_while { |p| p < 2_000_000}
#p prime_array
total_count = prime_array.inject {|sum, x| sum + x}
p total_count
#p prime_array.inject(&:+) also answer
# ans = 142,913,828,922