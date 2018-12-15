puts "Wake up! You're in a jail cell. There's an alarm going, the doors are open:"
puts "1. stay in the cell"
puts "2. escape before someone close it!"
print "> "

door = $stdin.gets.chomp
if door == "1"
	puts "A strange creature enters and rip you in half. Bad time to respect the rules! You're dead"
elsif door == "2"
	puts "You find that all your homies are dead. There's something strange going on..."
	puts "Something is behind you, it stinks very bad, possibly not human smell."
	puts "1. You decide to run as far as you possibly can"
	puts "2. You turn around and the creature hits you! Definetly not human"
	print "> "
	run = $stdin.gets.chomp
	if run == "1"
		puts "Finally you see an heavy metallic door. You enter and you're able to close it. You're safe!"
		puts "You managed to escape. You're the only one who survived"
	else run == "2"
		puts "That thing can puch!! Your face down and see a metallic fragment due to an explosion:"
		puts "1. grab that thing"
		puts "2. try to escape"
		print "> "
		run2 = $stdin.gets.chomp
		if run2 == "1"
			puts "You manage to hit to his throat that thing. He's dead and you manage to escape. You're the only one who survived"
		elsif run2 == "2"
			puts "You're still in a confusional state; trying to escape made you slip. The strange creature eats your all face! You died"
		end
	end
else
	puts "Something strange ate all your face! You're dead"
end