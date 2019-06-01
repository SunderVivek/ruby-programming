# methods or processes that are stored inside a variable
# Proc can take a block as argument
#New instance fo a proc is created below
full_name = Proc.new { |first,last| first + " " + last }
p full_name["Sunder","Vivek"]
p full_name.call("Sunder","Vivek")


name = Proc.new {|fname| fname * 5} 
p name["Sunder"]

another_name = Proc.new do |first|
	first * 5
end
p another_name["Vivek"]

#Procs are sort of delegates in C#