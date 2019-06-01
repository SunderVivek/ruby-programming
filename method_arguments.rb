def full_name first_name, last_name
	"#{first_name} #{last_name}"
end
p full_name "sunder", "vivek"

#named_arguments
def print_address city:, state:, zip:
	puts city
	puts state
	puts zip
end
print_address state: "Telangana", zip: 500084, city: "Hyderabad"


#Why named arguments? 
#Order of the arguments dont matter
#For complex methods
def sms_generator api_key, num, msg, locale
	#magic sms stuff
end
sms_generator 'api_key_sbdbvj', 65654, 'Hi', 'US'
#What if its called as
#sms_generator  65654, 'Hi', 'US', 'api_key_sbdbvj'

#Default arguments
def stream_movie title:, lang: "Telugu"
	puts title
	puts lang
end

stream_movie title: "Maharshi" , lang: "Hindi"
p '***********************'
stream_movie title: "Maharshi"


p'********************************' 
#Splat argument
# We pass any number of arguments and the method
# treats them like an array - *(one astrik)
def roster *players
	puts players
	p players
end

roster 'a', 'b', 'c', 'd', 'e'

p '****************************' 
# Keyword based Splat argument(Hash - **)(2 astrik)
def roster1 **players_with_positions
	players_with_positions.each do |player, position| #key, value
		puts "Player: #{player}"
		puts "Position: #{position}"
		puts "\n"
	end
end

data = {
	"A": "2nd base",
	"B": "3rd base",
	"C": "Catcher",
	"D": "Off"
}

roster1 data

p '*******************'
# Optional arguments
#It creates an empty hash for us and we can pass them using named arguments
def invoice options = {}
	puts options[:company]
	puts options[:total]
	puts options[:something_else]
	puts options[:state]
end
invoice company: "Google", total: 100.0, state: "jsgudg"