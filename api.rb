#http://edutechional-resty.herokuapp.com/posts.json

require 'rubygems'
require 'httparty'
#=begin
class EdutechionalResty
	include HTTParty
	base_uri "edutechional-resty.herokuapp.com/"

	def posts
		self.class.get('/posts.json')
	end
end
edutechional_resty = EdutechionalResty.new
puts edutechional_resty.posts
edutechional_resty.posts.each do |post|
	p "Title: #{post['title']} | Description: #{post['description']}"
	#Post.create(title: post['title'], description: post['description'])
end


#end
=begin
response = HTTParty.get('http://api.stackexchange.com/2.2/questions?site=stackoverflow')
puts response.body
puts "Response code: #{response.code}"
puts "Response message: #{response.message}"
puts "Headers: #{response.headers.inspect}"

p '****************************'

# Creating a custom ApiConnector in Ruby
class StackExchange
	include HTTParty
	base_uri 'api.stackexchange.com'

	def initialize(service, page)
		@options = {query: {site: service}}
	end

	def questions
		self.class.get('/2.2/questions',@options)
	end

	def users
		self.class.get('/2.2/users',@options)
	end
end

stack_exchange = StackExchange.new('stackoverflow',1)
#puts stack_exchange.questions
puts stack_exchange.users
p '****************************'
=end