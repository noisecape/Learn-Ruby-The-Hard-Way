tenThings = "Apples Oranges Crows Telephone Light Sugar"
puts "Wait there are not 10 things in that list. Let's fix that."

stuff = tenThings.split(' ')
moreStuff = ["Day", "Night", "Song", "Frisbee", "Corn", "Banana", "Girl", "Boy"]

#using math to make sure there's 10 items

while stuff.length != 10
	nextOne = moreStuff.pop
	puts "Adding: #{nextOne}"
	stuff.push(nextOne)
	puts "There are #{stuff.length} items now"
end

puts "There we go: #{stuff}"
puts "Let's do some things with stuff."

puts stuff[1]
puts stuff[-1]
puts stuff.pop()
puts stuff.join(' ')
puts stuff[3..5].join("#")

puts "This is a new version, added 12/15/2018"