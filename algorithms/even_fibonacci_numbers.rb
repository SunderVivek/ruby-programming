# Euler program 9
# sum of even fibonacci numbers
class ProjectEulerTwo
	def initialize(max)
		@num1 = 0
		@i = 0
		@sum = 0
		@num2 = 1
		@max = max
	end

	def even_fibonacci
		while @i <= @max
			@i = @num1 + @num2
			@sum += @i if @i % 2 == 0
			@num1 = @num2
			@num2 = @i
		end
		@sum
	end
end

result = ProjectEulerTwo.new(4_000_000)
p result.even_fibonacci
# Ans : 4613732