#2^15 = 32768 => 3 + 2 + 7 + 6 + 8 = 26
# Euler program 2
p (2 ** 1000).to_s.split(//).map(&:to_i).inject(&:+)
#1366