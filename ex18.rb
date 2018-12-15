def printTwo(*args)
	arg1, arg2 = args
	puts "arg1: #{arg1}, arg2: #{arg2}"
end

def printTwoAgain(arg1,arg2)
	puts "arg1: #{arg1}, arg2: #{arg2}"
end

def printOne(arg1)
	puts "arg1: #{arg1}"
end

def printNone()
	puts "I got nothin'."
end

printTwo("Zed","Shaw")
printTwoAgain("Zed","Shaw")
printOne("First!")
printNone()
