def goldRoom
	puts "This room is full of gold. How much do you take?"

	print "> "
	choice = $stdin.gets.chomp

	#this line has a bug, so fix it
	if !choice.empty?
		howMuch = choice.to_i
	else
		dead("Man, leard to type a number")
	end

	if howMuch < 50
		puts "Nice, you're not greedy, you win"
		exit(0)
	else
		dead("You greedy bastard!")
	end
end

def bearRoom
	puts "There is a bear here"
	puts "The bear has a bunch of honey"
	puts "The fat bear is in front of another door"
	puts "How are you going to move the bear?"
	bearMoved = false

	while true
		print "> "
		choice = $stdin.gets.chomp

		if choice == "take honey"
			dead("The bear looks at you then slaps your face off")
		elsif choice == "taunt bear" && !bearMoved
			puts "The bear has a moved from the door. You can go through it now"
			bearMoved = true
		elsif choice == "taunt bear" && bearMoved
			dead("The bear gets pissed off and chews your leg off")
		elsif choice == "open door" && bearMoved
			goldRoom
		else
			puts "I got no idead what that means"
		end
	end
end

def cthulhuRoom
	puts "Here you see the great evil Cthulhu"
	puts "He, it, whatever stares at you and you go insane"
	puts "do you flee your life or eat your head?"

	print "> "
	choice = $stdin.gets.chomp

	if choice.include? "flee"
		start
	elsif choice.include? "head"
		dead("Well that was tasty!")
	else
		cthulhuRoom
	end
end

def dead(why)
	puts why, "Good job!"
	exit(0)
end

def start
	puts "You are in a dark room."
	puts "There is a door to your right and left"
	puts "Which one do you take?"

	print "> "
	choice = $stdin.gets.chomp
	if choice == "left"
		bearRoom
	elsif choice == "right"
		cthulhuRoom
	else
		dead("You stumble around the room until you starve")
	end
end

start
			











