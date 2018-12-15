theCount = [1,2,3,4,5]
fruits = ['apples','oranges','pears','apricots']
change = [1, 'pennies', 2, 'dimes', 3, 'quarters']

#this first kind of for-loop goes through a list
#in a more traditional style found in other languages
theCount.each do |number|
	puts "This is count #{number}"
end

#same as above, but in a more Ruby style, this and the next one are the preferred way uby for-loops are written
fruits.each do |fruit|
	puts "A fruit of type: #{fruit}"
end

#also we can go through mixed lists too, note this is yet another style, exactly like above, but a different syntax
change.each {|i| puts "I got #{i}" }

#we can also build lists, first start with an empty one
elements = []

#then use the range opertor to do 0 to 5 counts
(0..5).each do |i|
	puts "adding #{i} to the list."
	#pushes the i variable on the *end* of the list
	elements.push(i)

	#I could have used also the << operator. This operator adds the element at the end.
	#elements << i
end

#now we can print them out too
#note: in Ruby there are two type of Range operators: ".." -> which exclude the
#last element; "..." which includes the last element
elements.each {|i| puts "Element was: #{i}" }

