#Enumerator
#Select method in Ruby
#Given an array of integers, grab only even integers

=begin
while x < array.lenth
	if x % 2 == 0
		puts x #Ohter languages
	end
end
=end

(1..10).to_a.select do |x|
	puts x if x.even?
end

(1..10).to_a.select { |x| puts x if x.even? }

p (1..10).to_a.select(&:even?) #Important
p'*****************************************' 
#Given an array of strings(sentence), return only words that are over 5 letters
# %w takes each word in sentence and converts it into array
p %w(The quickusvus brown fox jumped over the lazy dog).size
arr = %w(The quickskdjnvjk brown fox jumped over the lazy dog)
p arr.select { |x| x.length > 5 }
p'*****************************************' 
#Given an array of strings
#Return all the vowels (Regex)
p %w(a b c d e f g).select { |v| v =~ /[aeiou]/ }

#Map method in Ruby/ Map modifies and returns values
p ["1","23.0","0","4"].map { |x| x.to_i }

p ["1","23.0","0","4"].map(&:to_i)


p ("a".."g").to_a.map { |i| i * 2 }
#ANS: ["aa", "bb", "cc", "dd", "ee", "ff", "gg"]

p Hash[[1,2.1,3.33,0.9].map { |x| [x,x.to_i]}]
#ANS: {1=>1, 2.1=>2, 3.33=>3, 0.9=>0} :-) [x,x.to_i] is ans

p Hash[%w(A dynamic open source programming language).map { |x| [x,x.length] }]
#{"A"=>1, "dynamic"=>7, "open"=>4, "source"=>6, "programming"=>11, "language"=>8}

a =  {:a => "foo", :b => "bar", :lat => "120.343", :long => "33.212"}
		.map { |a, b| "#{a}=#{b}" }.join('&')
p a #"a=foo&b=bar&lat=120.343&long=33.212"
# Above is used for URL Processing

#Inject Method => injects a method
total = 0
[1,2,3,4,5,6,7,8,9,10].each do |i|
	total += i
end
puts "Type1: total"
#As + is a method in ruby not an operator
puts "Type2: total"
p [1,2,3,4,5,6,7,8,9,10].inject(&:+)
p [1,2,3,4,5,6,7,8,9,10].inject(&:*)