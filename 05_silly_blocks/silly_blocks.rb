def reverser
	words = yield.split
	words.map! { |word| word.split(//).reverse.join }
	words.join(" ")
end

def adder( addend = 1 )
	yield + addend
end