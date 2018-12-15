 #store in filename the first and the only argument passed to the program
filename = ARGV.first

#store creates an IO object for the file with pathname "filename"
txt = open(filename)

#print the pathname for the file given on input
puts "Here's your file #{filename}:"

#print the content of the file, by giving the file 'txt' the command read with no arguments
print txt.read

#line printed
print "Type the filename again: "

#now I'm asking the user to insert again the pathname of the file by using 
#the standard input (the keybord)
fileAgain = $stdin.gets.chomp

#again, we store in textAgain the IO object for the file 'fileAgain'
textAgain = open(fileAgain)

#print the content of textAgain, by calling the method read with no argument
print textAgain.read
