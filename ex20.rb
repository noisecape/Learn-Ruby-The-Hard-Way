inputFile = ARGV.first

def printAll(f)
	puts f.read
end

def rewind(f)
	f.seek(0)
end

def printAline(lineCount,f)
	puts "#{lineCount}, #{f.gets}" #MMM INDAGA MEGLIO CHE QUI NON CAPISCO PERCHE LUI CI METTE .CHOMP
end

currentFile = open(inputFile)

puts "First let's print the whole file:\n"

printAll(currentFile)

puts "Now let's rewind, kind of like a tape"

rewind(currentFile)

puts "Let's print three lines:"
currentLine = 1
printAline(currentLine, currentFile)

currentLine += 1
printAline(currentLine, currentFile)

currentLine += 1
printAline(currentLine, currentFile)



