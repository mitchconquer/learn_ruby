def translate(phrase)
	words = phrase.split
	words.length.times do |i|
		initials = get_initials(words[i])
		initials != "" ? start = initials.length : start = 0 # Set the start position for the word without the initial consonants
		translation = words[i].slice(start, (words[i].length - start)) #if intials != nil # Slice to keep only the part of the word after the initials as long as there are initials consonants
		translation = translation + initials + "ay"
		words[i] = translation
	end
	words.join(" ")
end

def get_initials(word)
	# Returns the initial consonant cluster or nil if starts with vowel
	initials = ""
	word.length.times do |i|
		# Check if letter is consonant, if not return the initials gotten so far
		if word[i] =~ /[^aeiouAEIOU]/
			initials += word[i]
			if word[i] =~ /[qQ]/ && word[i+1] =~ /[uU]/ # Check for "qu" combo
				initials += word[i+1]
			end
		else
			return initials
		end
	end
end

# puts "#{translate('apple')}"
# puts "#{translate('poop')}"
# puts "#{translate('translate this')}"
# puts "#{translate('square')}"