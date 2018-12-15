puts "Let's practice everything."
puts 'You\'d need to know\'bout escapes with \\ that do \n newlines and \t tabs.'

#declare a string which has a ending marker END, which is used to create
#a multi-line string. We could have used any ending marker I wanted, like
#STOP or FINISH, as far as the marker is placed at the end of the string
poem = <<END
\tThe lovely world
with logic so firmly planted
cannot discern \n the needs of love
nor comprehend passion from instuition
and requires an explanation
\n\twhere there is none.
END

puts "------------"
puts poem
puts "------------"

five = 10 - 2 + 3 - 6
puts "This should be five: #{five}"

#define a function which takes started as a paramether. It simply assign three values
#to three variables and then it returns them
def secretFormula(started)
	jellyBeans = started * 500
	jars = jellyBeans / 1000
	crates = jars / 100
	return jellyBeans, jars, crates
end

startPoint = 10000
#by calling the method 'secretFormula(startPoint) we are returning 3 values which are
#assigned to the variables beans, jars, crates'
beans,jars,crates = secretFormula(startPoint)

#it prints to the console a string in which we include the number of beans
#the number of jars and the number of crates
puts "With a starting point of: #{startPoint}"
puts "We'd have #{beans} beans, #{jars}, and #{crates} crates."

#initialize a variable called startPoint. We use this to call the method below
startPoint = startPoint / 10
puts "We can also do that this way:"

#This line prints to console the string which contains the variables beans, jars, crates
#it uses the same machanism of methavariables in C
puts "We'd have %s beans, %d jars, and %d crates" % secretFormula(startPoint)
