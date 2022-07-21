

def string_reverse_default(str)
	str.reverse
end

def string_reverse_manual(str)
	str.chars.reduce{ |x,y| y+x  }
end

p "Please enter a string for the reverse:"
str = gets.chomp

p "String : #{str} | reverse: #{string_reverse_default(str)} "
p "String : #{str} | reverse: #{string_reverse_manual(str)} "