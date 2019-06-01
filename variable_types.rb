# Local variables
=begin
10.times do
	x = 10
end
p x
=end

#Global variables
=begin
10.times do
	$x = 10
end
p $x
=end

#Instance variables

#@batting_average = 300

#Constant
TEAM = "Angels"
TEAM = "Athletics"

p TEAM
#Output
#variable_types.rb:23: warning: already initialized constant TEAM
#variable_types.rb:22: warning: previous definition of TEAM was here
#"Athletics"


#Class variable
#Variable thats available to that class
=begin
class MyClass
	@@teams = ["TeamA","TeamB"]
end
=end
