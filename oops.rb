=begin

class Vehicle
end

class Car < Vehicle
end

class Submarine < Vehicle
end
=end

# Getters and setters in Ruby
class ApiConnector
	attr_accessor :title, :description, :url


	def initialize(title: title,description: description, url: url = "google.com")
		@title = title
		@description = description
		@url = url
		secret_method
	end

	def test_method
		puts "testing class call"
	end

	def testing_initializers
		puts @title
		puts @description
		puts @url
	end

	def api_logger
		p "API Connector starting"
	end

	private
	def secret_method
		puts "Secret message from the parent class."
	end
end

#api = ApiConnector.new
#api.url = "http://google.com"
#puts api.url
#api.test_method
api1 = ApiConnector.new(title: "My Title",description: "My description")
api1.testing_initializers

p '********************************'
#Object oriented inheritance in Ruby

class SmsConnector < ApiConnector
def send_sms
	p "Sending SMS call..."
end
end
api = SmsConnector.new(title: "My Title",
	description: "My description", url: "yahoo.com")
api.testing_initializers

class PhoneConnector < ApiConnector
	def send_phone_call
		p "Sending Phone call..."
	end
	def api_logger#Overriden from parent
		super # Calls the corresponding parent method
		p "Phone call API Connector starting"
	end
end

class MailConnector < ApiConnector
	def send_email
		p "Sending Email call..."
	end
end

sms = SmsConnector.new(title: "My Title",
	description: "My description", url: "yahoo.com")
sms.send_sms

phone = PhoneConnector.new(title: "My Title",
	description: "My description", url: "yahoo.com")
phone.send_phone_call

mail = MailConnector.new(title: "My Title",
	description: "My description", url: "yahoo.com")
mail.send_email
#Secret message from the parent class.
#"Sending Email call..."

#Differences between public and private mthods in Ruby
#phone.secret_method
#private method `secret_method' called for #<PhoneConnector
#Protected keyword allows method call from within the class alone.

# Polymorphism and using super in Ruby
phone.api_logger