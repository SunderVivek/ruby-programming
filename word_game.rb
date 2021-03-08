puts "Enter board alphabets with space:"
board = gets.split(' ')
#Enter board alphabets with space => a z c t v a
#board = [ 'a', 'z', 'c', 't', 'v', 'a' ]

puts "Enter Word:"
word = gets.strip.split('')
#word = "cat".split('')

solution = [] #List of moves

word.each { |letter|
	position_from_left = board.find_index(letter)
	position_from_right = board.reverse.find_index(letter)
	optimum_position = [position_from_left, position_from_right].min
	if letter == board[optimum_position]
		board.rotate!(optimum_position)
		optimum_position.times {solution << "LEFT"}
		removed_letter = board.shift
		solution << "LEFT :#{removed_letter}"
	else
		board.rotate!(-optimum_position)
		optimum_position.times {solution << "RIGHT"}
		removed_letter = board.pop
		solution << "RIGHT :#{removed_letter}"
	end
}

p solution.join(", ")