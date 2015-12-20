class Book

	def title= (user_title)
		@title = format(user_title)
	end

	def title
		@title
	end

	def format(input)
		words = input.split
		small_words = ["the", "a", "an", "and", "in", "of", "on"]

		words.each do |word|
			if small_words.include?(word)
				word.downcase!
			else
				word.capitalize!
			end
		end

		# Make sure the first word is always capitalized
		words[0].capitalize!
		
		words.join(" ")
	end
end
