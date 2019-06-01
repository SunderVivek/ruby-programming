# Euler program 8
# Sum of digits in 100!
# inject(&:+) = inject(:+)
def factorial_value_sum_generator(factorial)
	factorial 
	p (1..factorial).to_a.inject(:*).to_s.split(//).map(&:to_i).inject(:+)
end

factorial_value_sum_generator(100)
# Ans: 648