#write your code here
def echo(string)
	string
end

def shout(string)
	string.upcase
end

def repeat(string, n=2)
	res = ""
	while n > 0
		res << string + " "
		n -= 1
	end
	return res.chop
end

def start_of_word(word, n)
	return word[0, n]
end

def first_word(string)
	string.partition(' ').first
end

def titleize(string)
	res = ''
	string = string.split.map(&:capitalize).join(' ')
	while string.include?(' And')
		string[string.index(' And'), 4] = ' and'
	end
	while string.include?(' The')
		string[string.index(' The'), 4] = ' the'
	end
	while string.include?(' Over')
		string[string.index(' Over'), 5] = ' over'
	end

	return string
end