userName, sport = ARGV #Gets the first argument
prompt = '> '

puts "Hi #{userName}."
puts "I'd like to ask you few questions."
puts "Do you like me #{userName}? "
puts prompt
likes = $stdin.gets.chomp

puts "Do you practice #{sport}? It's very healty for you, so you should"
puts prompt
practice = $stdin.gets.chomp

puts "Where do you live #{userName}? "
puts prompt
lives = $stdin.gets.chomp

puts "What kind of computer do you have? ", prompt
computer = $stdin.gets.chomp

puts """
Alright, so you said #{likes} about liking me.
You live in #{lives}. Not sure where that is.
You said you #{practice} practice #{sport}, and that's very nice!
And you have a #{computer} computer. Nice.
"""
