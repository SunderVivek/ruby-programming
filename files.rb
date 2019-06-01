# r - reading
# a - appending
# w - just writing
# w+ - reading and writing
# a+ - open a file for reading and appending
# r+ - opening a file for updating, both reading and writing
File.open("F:/Udemy/RubyProgramming/teams.txt",'w+'){|f| f.write("TeamA,TeamB,TeamC")}
file_to_save = File.open("F:/Udemy/RubyProgramming/other_teams.txt",'w+')
file_to_save.puts("TeamX,TeamY,TeamZ")
file_to_save.close

#Reading from a file
teams = File.read("F:/Udemy/RubyProgramming/teams.txt")
p teams
p teams.split(',')

other_teams = File.read("F:/Udemy/RubyProgramming/other_teams.txt")
team_master = teams.split(',') + other_teams.split(',')
p team_master
team_master.each do |team|
	p team.upcase
end

#Appending to a File

10.times do
	sleep 1
	puts "Record Saved..."
	File.open("F:/Udemy/RubyProgramming/server_logs.txt","a") {|f| 
		f.puts "Server Started at:#{Time.now}"
	}
end

#File delete
File.delete("F:/Udemy/RubyProgramming/other_teams.txt")
File.delete("F:/Udemy/RubyProgramming/teams.txt")
File.delete("F:/Udemy/RubyProgramming/server_logs.txt")
#Comment server_logs line when running