fromFile, toFile = ARGV

puts "Copying from #{fromFile} to #{toFile}"

#we could do these two on one line, how?
inFile = open(fromFile)
inData = inFile.read
puts "Ready, hit RETURN to continue, CTRL-C to abort."
$stdin.gets

outFile = open(toFile, 'w')
outFile.write(inData)
puts "Alright, all done, here's the new '#{toFile}' content:"
puts "#{inData}"
outFile.close
inFile.close 