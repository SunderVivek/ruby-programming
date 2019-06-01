# Difference between lambda and procs

# Argument count

full_name = lambda { |first, last| "#{first} #{last}" }
p full_name.call("sunder", "vivek")

#wrong number of arguments (given 3, expected 2)
#p full_name.call("sunder", "vivek", "Jaya Kumar") 


full_name = Proc.new { |first, last| "#{first} #{last}" }
# No error for wrong number of arguments for procs
p full_name.call("sunder", "vivek", "Jaya Kumar")


# Return behaviour

def my_lambda_method
	x = lambda { return }
	x.call
	p "Text from within the method"
end
my_lambda_method # Prints the text i.e executes the method

def my_proc_method
	x = Proc.new { return }
	x.call
	p "Text from within the method"
end
my_proc_method # Returns nil, i.e returns from the method