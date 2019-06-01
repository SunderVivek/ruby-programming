i = 0

while i < 10
	p 'Hey there'
	i += 1
end

arr = [1,2,3,4,5,6]
#Type1
arr.each do |i|
	p i
end
#Type2
arr.each { |i| p i }

for i in 0..42
	p i
end


#Nested loops
teams = {
	"a" => {
		"b" => "c",
		"e" => "d",
	},
	"z" => {
		"x" => "y",
		"p" => "q",
	}
}
teams.each do |team, players|
	p team
	players.each do |position,player|
		p "#{player} starts at #{position}"
	end
end

