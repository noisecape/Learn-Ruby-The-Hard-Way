#Escape double quote so ruby can infer that inside there's a quote
puts "I am 6'4\" tall."
puts "I am 6\' tall."

#Another way is to use """ aka, triple quote! You can put whatever you want inside
# as far as there's a """ at the end
tabbyCat = "\tI'm tabbed in."
persinCat = "I'm split\non a line."
backslashCat = "I'm \\ a \\ cat."

fatCat = """
I'll do a list
\t* Cat food
\t* Fishies
\t* Catnip\n\t* Grass
"""

puts tabbyCat
puts persinCat
puts backslashCat
puts fatCat

#Here's all the escape sequence that Ruby supports:

puts "---------------------------------"
puts "ESCAPE\t|"+"What it does\t\t|"
puts "---------------------------------"
puts "\\\t|"+"Backslash ()"
puts "\\'t\t|"+"Single-quote (')"
puts "\\\"\t|"+"Double quote (\")"
puts "\\a\t|"+"ASCII bel (BEL)"
puts "\\b\t|"+"ASCII baclspace (BS)"
puts "\\f\t|"+"ASCII formfeed (FF)"
puts "\\n\t|"+"ASCII linefeed (LF)"
puts "\\r\t|"+"ASCII carriage return (CR)"
puts "\\t\t|"+"ASCII Horizontal Tab (TAB)"
puts "\\uxxxx\t|"+"Character with 16-bit hex value xxxx (Unicode only)"
puts "\\v\t|"+"ASCII vertical tab (VT)"
puts "\\ooo\t|"+"Character with octal value ooo"
puts "\\xhh\t|"+"Character with hex value hh"