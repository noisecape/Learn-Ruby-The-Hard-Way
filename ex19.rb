def cheeseAndCrackers(cheeseCount, boxesOfCrackers)
	puts "You have #{cheeseCount} cheeses!"
	puts "You have #{boxesOfCrackers} boxes of boxesOfCrackers"
	puts "Man that's enough for the party!"
	puts "Get a blanket\n"
end

puts "We can just give the function numbers directly:"
cheeseAndCrackers(20,30)

puts "OR, we can use variables from our script:"
amountOfCheese = 10
amountOfCrackers = 50

cheeseAndCrackers(amountOfCheese,amountOfCrackers)

puts "We can even do math inside too:"
cheeseAndCrackers(10+20,5+6)

puts "And we can combine the two, variables and math:"
cheeseAndCrackers(amountOfCheese+100,amountOfCrackers+1000)

def blankets(numberOfRedOne, numberOfBlueOne, numberOfWhiteOne)
	puts "We have #{numberOfRedOne} red blankets"
	puts "We have #{numberOfBlueOne} blue blankets"
	puts "We have #{numberOfWhiteOne} white blankets"
end

puts "How many red blankets do we need folks?"

reds = gets.chomp.to_i
puts "How many blue blankets do we need folks?"
blues = gets.chomp.to_i
puts "How many blue blankets do we need folks?"
whites = gets.chomp.to_i
puts "So:"
blankets(reds,blues,whites)