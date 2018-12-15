module Ex25
	#This function will break up words for us
	def Ex25.breakWords(stuff)
		words = stuff.split(' ')
		return words
	end

	#Sorts the words
	def Ex25.sortWords(words)
		return words.sort
	end

	#Prints the first word after shifting it off
	def Ex25.printFirstWord(words)
		word = words.shift
		puts word
	end

	#Prints the last word after popping it off
	def Ex25.printLastWord(words)
		word = words.pop
		puts word
	end

	#Takes in a full sentence and returns the sorted words
	def Ex25.sortSentence(sentence)
		words = Ex25.breakWords(sentence)
		return Ex25.sortWords(words)
	end

	#Prints the first and the last word of the sentence
	def Ex25.printFirstAndLast(sentence)
		words = Ex25.breakWords(sentence)
		Ex25.printFirstWord(words)
		Ex25.printLastWord(words)
	end

	#Sorts the words then prints the first and the last one
	def Ex25.printFirstAndLastSorted(sentence)
		words = Ex25.sortSentence(sentence)
		Ex25.printFirstWord(words)
		Ex25.printLastWord(words)
	end
end