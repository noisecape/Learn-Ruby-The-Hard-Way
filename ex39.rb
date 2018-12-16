#this is how arrays work
things = ['a', 'b', 'c', 'd']
puts things[1]
things[1] = 'z'
puts things

#this is how hash works
stuff = {'name' => 'Tommaso', 'age' => 23, 'height' => 174 }
puts stuff['name']
puts stuff['age']
puts stuff['height']
stuff['city'] = "Pistoia"
puts stuff['city']

#We can also use numbers for keys
stuff[1] = "Wow"
stuff[2] = "Boh"
puts stuff[1]
puts stuff[2]

#A hash, just like arrays, or strings or whatever in ruby, inherits a series of function, for example 'delete'
stuff.delete('city')
stuff.delete(1)
stuff.delete(2)
puts stuff

### HASH EXAMPLE ###

#create a mapping of state to abbreviation

states = {
	'Oregon' => 'OR'
	'Florida' => 'FL'
	'California' => 'CA'
	'New York' => 'NY'
	'Michigan' => 'MI'
}

#create a basic set of states and some cities in them

cities = {
	'CA' => 'San Francisco'
	'MI' => 'Detroit'
	'FL' => 'Jacksonville'
}

#add some more cities

cities['NY'] = 'New York'
cities['OR'] = 'Portland'

#puts out some cities

puts '-' * 10
puts "NY State has: #{cities['NY']}"
puts "OR State has: #{cities['OR']}"

#puts some states

puts '-' * 10
puts "Michigan's abbreviation is: #{states['Michigan']}"
puts "Florida's abbreviation is: #{states['Florida']}"












