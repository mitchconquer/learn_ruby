def echo(string)
	string
end

def shout(string)
	string.upcase
end

def repeat(string, times = 2)
	result = ""
	times.times{ result += string.to_s + " " }
	result.slice(0, (result.length - 1)) # Remove the final space at the end of the result
end

def start_of_word(word, letters = 1)
	word.slice(0, letters)
end

def first_word(phrase)
	phrase.split.first
end

def titleize(title)
	words = title.split
	little_words = ["and", "over", "the", "a", "an", "on", "though", "under"]
	words.length.times do |counter|
		if counter == 0
			words[counter][0] = words[counter][0].upcase
		elsif little_words.include?(words[counter]) == false
			words[counter][0] = words[counter][0].upcase
		end
	end
	words.join(" ")
end
			