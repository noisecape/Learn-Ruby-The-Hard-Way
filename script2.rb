first,second = ARGV

#input = gets.chomp ---> this will cause an error, since i've passed some arguments

puts "#{first} #{second}"
input = $stdin.gets.chomp #I've to use $stdin.gets.chomp and not gets.chomp
#because since i passed something as argument in ARGV, my script is now reading
#inside the file (passed as an argument). So if i want to read from the console!

puts "I've just inserted #{input} from the console"