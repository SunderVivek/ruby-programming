# Meta programmed :-)

class Array
	def quicksort
		return [] if empty?
		#[34,2,1,5,3]
		#[34,2,5,3]	, pivot = 1
		#left = [34,2]
		#right = [5,3]
		pivot = delete_at(rand(size))
		left, right = partition(&pivot.method(:>))
		return *left.quicksort, pivot, *right.quicksort
	end
end

p [34,2,1,5,3].quicksort
#partition is a method we cacn call on an array. 
# it grabs 2 values, and returns 2 sides of it
#irb(main):011:0> a
#=> [1, 43, 2, 87, 2, 34]
#irb(main):012:0> a.partition(&35.method(:>))
#=> [[1, 2, 2, 34], [43, 87]]