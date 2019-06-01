#String is a set of characters
x = "Any value" # 'Any value'
p x

#String interpolation
#Getting values dynamically into puts statement
puts "Name an animal:"
#animal = gets.chomp
puts "Name a noun:"
#noun = gets.chomp
#p "The quick brown #{animal} jumped over the lazy #{noun}"

#Interpolation works only with ""
p 'The quick brown #{animal} jumped over the lazy #{noun}'

#We can give a ruby statement/program in it too.
p "The quick brown #{ 2 + 2 }"
#We can put if statment in interpolation too.

#String manipulation
"Astros".upcase#/downcase/swapcase(swaps the case)/reverse

# method with ! raises error, and method without ! fails silently


#String substitutions


str = "The quick brown fox jumped over the quick dog"
p str.sub "quick", "slow" #Substitues only first occurance

p str.gsub "quick", "slow" #Substitues all occurances
# ! methods change the string's value

str1 = "   The quick brown fox jumped over the quick dog            "
#strip
p str1.strip

# split
p str1.split # splits all the words into an array
p str1.split.size
p str1.split(//).size # (//) gives array of all letters. and .size returns the number of letters in the sentence.