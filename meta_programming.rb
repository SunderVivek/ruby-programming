# Example - first_name + ' ' + last_name
# Ability in ruby to open up classes and be able to override 
# different methods to give our programs customization

# Meta programming custom methods in ruby
require 'ostruct'

#Example 1
class Baseball
end

#p Baseball.new.swing #undefined method `swing' for #<Baseball:

class Baseball
	def swing
		"Homerun"
	end
end
p Baseball.new.swing

class Baseball
	def swing
		"Strike"
	end
end
p Baseball.new.swing
p '******************'
#Example2
class String
	def censor(bad_word)
		self.gsub! "#{bad_word}", "CENSORED"
	end

	def num_of_chars
		size	
	end
end
p "The bunny was in trouble with the king's bunny".censor("bunny")
p "The bunny was in trouble with the king's bunny".num_of_chars

p '***********************'

#Example3 (Guide to missing method in Ruby)
#require 'ostruct' # mimics a database
class Author
	attr_accessor :first_name, :last_name, :genre

	def author
		OpenStruct.new(first_name: first_name, last_name: last_name, genre: genre)
	end

	def method_missing(method_name, *arguments, &block)
		# If anyone calls author_... our method_missing with match
		if method_name.to_s =~ /author_(.*)/
			author.send($1, *arguments, &block) # $1 is 1st argument
		else
			super
			# author_first_name will work, but author_social_number wont
			# only methods with author_.. is generated dynamically
		end
	end

	def respond_to_missing?(method_name, include_private = false)
		method_name.to_s.start_with?('author_')	|| super
	end

	genres = %w(fiction coding history)
	genres.each do |genre|
		define_method("#{genre}_details") do |arg|
			puts "Genre: #{genre}"
			puts arg
			puts genre.object_id
		end
	end

end

author = Author.new
author.first_name = 'SunderVivek'
author.last_name = 'JayaKumar'
author.genre = 'Human'
p author.first_name
p author.author_genre #"Human"
p author.respond_to?(:inspect) #inspect is available to any object in ruby
p author.respond_to?(:author_genre)# false => not good, so implement respond_to_missing

# Implementing Respond_to? in Ruby
# after implementing respond_to_missing we get true
p '***************************'
#Using define method to create dynamic method

author = Author.new
#author.some_method

author.coding_details("Sunder")
author.fiction_details("Vivek")
# When using define method, we dont need to code for respond_to?
# Define method actually creates the methods at run time
p author.respond_to?(:coding_details)
p author.respond_to?(:fiction_details)

#Method missing is flexible
#Define method, we need to dictate everything
=begin
define_method("some_method") do
		puts "Some details"
	end
=end

# Reviewing find_by method in rails
=begin
Customer.last # brings last customer
Customer.find_by(name: "Oxy") #Real method
Customer.find_by_name("Oxy") # Meta programmed method from above
Customer.find_by_email("sunder@gmail.com") # Meta programmed method from above
=end