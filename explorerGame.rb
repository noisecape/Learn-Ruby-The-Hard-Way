module Explorer
	
	def Explorer.dead(cause)
		puts "Game over: #{cause}"
		exit(0)
	end

	def Explorer.kill(enemy)
		puts "The #{enemy} is dead, your safe for now."
	end

	def Explorer.killSpiderAndOpenTheDoor()
		killed = false
		puts "You manage to jump the hole, but there's another giant spyder in front of you!"
		print "> "
		kill = $stdin.gets.chomp
		if kill == "kill"
			puts "Great. You're safe."
			killed = true
		else
			Explorer.dead("The spyder killed you")
		end
		return killed
	end


	def Explorer.getTheKey()
		grabbed = false
		while !grabbed
			puts "Good, no more spyders..."
			print "> "
			action = $stdin.gets.chomp
			if action == "grab it"
				grabbed = true
			else
				puts "You should grab the key..."
			end
		end
		return grabbed
	end



	def Explorer.finalStage()
		puts "You find another giant spyder, wait... what? There's a key behind him"
		print "> "
		kill = $stdin.gets.chomp
		gotTheKey = false

		while !gotTheKey
			if kill == "kill"
				gotTheKey = Explorer.getTheKey
			else
				Explorer.dead("The spyder ate your face!")
			end
		end
		return gotTheKey
	end



	def Explorer.openTheTreasureChest()
		opened = false
		action = $stdin.gets.chomp
		if action == "open"
			opened = true
		else
			opened = false
		end
		return opened
	end

	def Explorer.endTheGame()
		puts "You're out. Safe for now... Mars is so big, who knows what other creatures you'll need to face!"
		exit(0)
	end

end

puts """
Welcome to the darkest place on Mars. You're actually underground where a 
1000 years ago the first human colonies (lead by Mr Elon Musk) started to drill the Martius, 
a precius mineral which has a price 10 times higher than gold!
Human started to drill Mars for this incredibly rare material, treating it like a place 
to exploit rather than a new home... HUMANS.
"""
puts "An accident has occurred. It's all dark around you, and the only thing that lets you see is a torch on your helmet."
puts "There's a door in front of you."
print "> "
choice = $stdin.gets.chomp
attempts = 0
while choice != "open"
	if attempts == 0
		puts "Come on, it's not safe here!"
		attempts += 1
	elsif attempts == 1
		puts "The oxygen into the breather is limitated hurry up!"
		attempts += 1
	else
		Explorer.dead("The oxygen into the breather finished")
	end
	print "> "
	choice = $stdin.gets.chomp
end
puts "Once you opened the door you see a scary giant spyder. You should do something..."
print "> "
kill = $stdin.gets.chomp
killCounts = 0
while killCounts != 2
	if (kill == "kill" || kill == "hit") && killCounts == 0
		killCounts += 1
		puts "The spyder is almost dead. Come on one more puch!"
		print "> "
		kill = $stdin.gets.chomp
	elsif (kill == "kill" || kill == "hit") && killCounts == 1
		Explorer.kill("spyder")
		killCounts += 1
	else
		Explorer.dead("The giant spyder ate your whole face.")
	end
end

puts "You continue you journey through the cave. Now you see a hole with a rope, over it. If you could grab it and swing..."
print "> "
takeRope = $stdin.gets.chomp
swings = 0
grabbed = false
while swings != 1
	if takeRope == "grab it" && !grabbed
		grabbed = true
		puts "Good job, now you need to swing to get to the other side"
		print "> "
		takeRope = $stdin.gets.chomp
	elsif grabbed && takeRope == "swing"
		swings += 1
		puts "#{swings}"
		puts "Almost there, one more!"
		print "> "
		takeRope = $stdin.gets.chomp
	elsif grabbed && takeRope != "swing"
		Explorer.dead("You felt down into the dark hole")
	else
		puts "You need to grab the rope"
		print "> "
		takeRope = $stdin.gets.chomp
	end
end

puts "You're through"
puts "Now you see another hole... seems safe. But you can jump it and on the other"
puts "side you can see a figure... it could be another giant spyder"

print "> "
down = $stdin.gets.chomp
killed = false
while !killed
	if down == "jump"
		killed = Explorer.killSpiderAndOpenTheDoor()
	elsif down == "down"
		puts "You're on the bottom of the hole. Keeping walking and discover a ladder in front of you"
		print "> "
		climb = $stdin.gets.chomp
		if climb == "climb"
			puts "You made it to the top. Everything is safe"
			break
		else
			puts "Come on. The oxygen is not infinite"
		end 
	else
		puts "You can't stay here forever. Oxygen will terminate. Take a decision: down the hole, or jump the hole?"
	end
end

puts "You slowly walk, there's some steps. You pass them, another hole!"
print "> "
jump = $stdin.gets.chomp
if jump == "jump"
	puts "There's a treasure chest: "
	action = Explorer.openTheTreasureChest
	puts "Wow. There's a lot of gold. If you can escape, you'll be richer. What a luck"
end

puts "Why didn't you open the treasure chest? Fine, another hole with a ladder that goes down a lot. It seems very deep!"
print "> "
action = $stdin.gets.chomp 
gotTheKey = false
while !gotTheKey
	if action == "jump"
		puts "There's a door. It seems locked"
		if !gotTheKey
			puts "You can't open it. Try to look down in the hole"
			print "> "
			action = $stdin.gets.chomp
		end
	elsif action == "down"
		gotTheKey = Explorer.finalStage
	else
		puts "Warning: Oxygen low!"
	end	
end

puts "You manage to climb the ladder. Continue and see a door."
print "> "
action = $stdin.gets.chomp
if action == "open"
	Explorer.endTheGame()
else
	Explorer.dead("Oxygen terminated...")
end










			

