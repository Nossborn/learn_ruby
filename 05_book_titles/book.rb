class Book
	# write your code here
	attr_accessor :title

	def title
		res = ''
		words = @title.split(' ')
		words.each do |word|
			if(no_small_words(word))
				res << word.capitalize + ' '
			else
				res << word + ' '
			end
		end
		res = res.slice(0,1).capitalize + res.slice(1..-1)

		return res.chop
	end

	def no_small_words(word)
		small_words = ["the", "and", "in", "of", "a", "an"]
		small_words.each do |small_word|
			if(small_word == word)
				return false
			end
		end
		return true
	end

end