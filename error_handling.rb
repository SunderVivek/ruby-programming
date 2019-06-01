=begin
begin 
	#puts 8/0
	puts nil + 10
rescue StandardError => e
	puts "Error occured:#{e}"#Error occured:undefined method `+' for nil:NilClass
rescue ZeroDivisionError => e
	puts "Error occured:#{e}" #Error occured:divided by 0
rescue
	p "Rescued the error"
end
=end
#Custom error handling in Ruby
 def error_logger(e)
 	File.open('F:/Udemy/RubyProgramming/error_log.txt','a') do |file|
 		file.puts e 		
 	end
 end

begin
	#p nil + 10
	p 8/0
rescue StandardError => e
	error_logger("Error:#{e} occurred at #{Time.now}")
end