string = "The quick 12 brown foxes jumped over the 10 lazy dogs"

#Check if string has letter 'o'
p string =~ /o/ #15 th index is answer
p string =~ /quick/

p string =~ /z/ ? "Valid" : "Invalid" #Valid

p string =~ /Z/ ? "Valid" : "Invalid" #Invalid

p string =~ /Z/i ? "Valid" : "Invalid" #Valid (/i - Case insensitive)

#scan is a method in regex in ruby
#getting all integers from above string
#regex for ll integers is- /d+ (+ indicates to search for all integers)
p string.to_enum(:scan, /\d+/).map { |e| Regexp.last_match }

# Building an Email matcher
VALID_EMAIL_REGEX = /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i

def is_valid_email? email
	email =~ VALID_EMAIL_REGEX
end
p is_valid_email?("jsundervivek1996@gmail.com") ? "Valid" : "Invalid"
p is_valid_email?("jsundervivek.1996@gmail.com") ? "Valid" : "Invalid"
p is_valid_email?("jsundervivek1996gmail.com") ? "Valid" : "Invalid"
p is_valid_email?("jsundervivek1996@gmail") ? "Valid" : "Invalid"
p is_valid_email?("jsundervivek_1996@gmail.com") ? "Valid" : "Invalid"
p '*****************************************'
# Building an IP Address matcher
# 172.16.0.0 to 172.31.255.255
IP_ADDRESS_REGEX = /^((?:(?:^|\.)(?:\d|[1-9]\d|1\d{2}|2[0-4]\d|25[0-5])){4})$/

def is_valid_ip_address? ip
	ip =~ IP_ADDRESS_REGEX
end
p is_valid_ip_address?("999.16.0.0") ? "Valid" : "Invalid"
p is_valid_ip_address?("172.16.0.0") ? "Valid" : "Invalid"
p is_valid_ip_address?("172.31.255.255") ? "Valid" : "Invalid"
p is_valid_ip_address?("172.31.255.256") ? "Valid" : "Invalid"
p '*****************************************'

# Rubular - tool for regex in Ruby (rubular.com)


# Wheel of fortune game

starting_sentence = "Hi from matching land"
sentence_array = starting_sentence.split("").map(&:downcase)
accurate_count = sentence_array - [" "]
final_sentence = starting_sentence.gsub(/[a-zA-Z]/,"_").split("")

while sentence_array.count("") < accurate_count.count
	puts "Guess a letter:"	
	guess = gets.downcase.chomp

	if sentence_array.include?(guess)
		letter_index = sentence_array.find_index(guess)
		sentence_array[letter_index] = ""
		final_sentence[letter_index] = guess
		puts "Correct! The sentence is now: #{final_sentence.join}"
	else
		puts "Sorry, that letter isn't the right answer, please try again."
	end
end


p '***************************'
=begin
# Introduction to grep method in ruby
# Powerful method, can be used instead of select-map combo

#rake routes | grep testimonial
irb(main):001:0> a=[1,2,3,4,3,2,1]
=> [1, 2, 3, 4, 3, 2, 1]
irb(main):002:0> a.grep(1)
=> [1, 1]
irb(main):003:0> a.grep(100)
=> []
irb(main):004:0> arr = ['hey.rb','there.rb','index.html']
=> ["hey.rb", "there.rb", "index.html"]
irb(main):005:0> arr
=> ["hey.rb", "there.rb", "index.html"]
irb(main):006:0> arr.select{|x| x=~/\.rb/}
=> ["hey.rb", "there.rb"]
irb(main):007:0> arr.select{|x| x=~/\.rb/}.map{|x| x[0..-4]}
=> ["hey", "there"]
irb(main):008:0> arr.grep(/(.*)\.rb/){$1}
=> ["hey", "there"]
=end