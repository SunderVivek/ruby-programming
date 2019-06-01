# Euler program 3
# Humanize counting algorithm
require 'humanize'

no_space_array , total = [], 0
#p (1..1000).to_a.map(&:humanize)
# ["one", "two", "three",..., "nine hundred and ninety-nine", "one thousand"]


#(1..1000).to_a.map(&:humanize).each { |word| 
#	no_space_array << word.delete(" ").delete("-")
#}
#p no_space_array

(1..1000).to_a.map(&:humanize).each { |word| 
	no_space_array << word.delete(" ").delete("-")
}.each { |element| total += element.length}

p total
# 24527