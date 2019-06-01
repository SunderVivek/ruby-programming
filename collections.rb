# Arrays

x = [1,2,3,4,5]
y = Array.new
y[0] = 1
y[10] = 10
p y #[1, nil, nil, nil, nil, nil, nil, nil, nil, nil, 10]
y.each do |i|
	p i
end

x = ["avsv",3,4,"gtbrb",true,4,4,4,4]
x.delete(4)

x.delete_at(2)# Index 2, reuturns the deleted value at index 2

batting_averages = [0.300,0.180,0.220, 0.250]
p batting_averages.delete_if { |average| average < 0.24 }

#Join method(Converts entire array to a single string),
# used for url formatting
team = ["TeamA","TeamB","TeamC"]
p team.join(',')
p team.join('-')

team.push("TeamD")
team.push("TeamE","TeamF")
p team
team.pop
p team
p '********************************'
# Hashes

positions = {first_base: "A", second_base: "B", short_stop: "C"}
p positions
positions1 = {"first_base" => "A", "second_base" => "B", "short_stop" => "C"}
p positions1
positions2 = {:first_base => "A", :second_base => "B", :short_stop => "C"}
p positions2[:second_base]

positions2.delete(:second_base)
p positions2 #{:first_base=>"A", :short_stop=>"C"}

p '******************************'
# Iterate over a hash
positions.each_key do |k|
	puts k
end

positions.each_value do |v|
	p v
end
p '******************************'
people = {:A => 2, :B => 3, :C => 4}
p people
p people.invert # Inverts keys and values
people_2 = people.invert
p people.merge(people_2)

p people.to_a #[[:A, 2], [:B, 3], [:C, 4]]
p people.keys
p people.values