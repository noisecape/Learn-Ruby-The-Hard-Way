def iteration(incrementBy)
	i = 0
	numbers = []
	while i < 6
		puts "At the top i is #{i}"
		numbers.push(i)

		i += incrementBy
		puts "Numbers now: ", numbers
		puts "At the bottom i is #{i}"
	end
	return numbers
end

def iterationWithFor(incrementBy)
	i = 0
	numbers = []
	(0..6).each do |i|
		puts "At the top i is #{i}"
		numbers.push(i)
		i += incrementBy
		puts "Numbers now: ", numbers
		puts "At the bottom i is #{i}"
	end
end



puts "The numbers: "
increment = 2
#numbers = iteration(increment)
numbers = iterationWithFor(increment)

numbers.each {|num| puts num }