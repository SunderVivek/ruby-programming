# Dig keyword

require 'yaml'

user = {
	name: "Sunder",
	favorites:{
		food: "Pizza",
		movies: "Fiddler on the roof"
	}
}
user.dig(:name) # => Sunder
user.dig(:favorites,:movies) # => Fiddler on the roof
user.dig(:favorites,:something_else) # => nil

config = YAML.load_file('F:/Udemy/RubyProgramming/config.yml')
p config.dig('secret_key') # => password
p config.dig('production','aws_key')
p config.dig('development','aws_key')