# Method is a function
def baseball_team_list
	#Syntax for writing a method
	["TeamA","TeamB"]
end

def second_baseball_team_list
	x = 10
	# also no return is needed
	return ["TeamA","TeamB","TeamC"] if x == 10
	["TeamZ","TeamY"]
end

p baseball_team_list 

#What ruby methods return
#Last statement mostly.

#Differences between puts and returning values
 # puts doesnot return any value
 def void_method # prints and returns nil
 	puts "Hey there"
 end

 def method_with_return # returns value and doesnot return nil
 	return "hey there"
 end

x = void_method
y = method_with_return
p x # nil
p y # hey there