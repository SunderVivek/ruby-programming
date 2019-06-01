# Lamdas are similar to procs
first_name = lambda {|first,last| first + " " + last}

p first_name["Sunder","Vivek"]

#Stabby lambda
name = ->(first, last) { first + " " + last }

p name["Sunder","Vivek"]
p name.call("sunder", "vivek")