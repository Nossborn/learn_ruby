#write your code here
def translate(string)
	res = string.split(' ')
	res.each do |word|
		if(not_start_with_vowel?(word))
			word << f_sound(word)
			word[0, f_sound(word).length] = ''
		end
		word << 'ay'
	end

	res.each do |i|
		i << " "
	end
	res[res.length-1] = res[res.length-1].to_s.chop
	return res.join
end

def f_sound(word)
	if(word[0] + word[1] == 'qu')
		return 'qu'
	end

	if(word[0..2] == 'squ')
		return 'squ'
	end

	if(not_start_with_vowel?(word))
		sound = ''
		word.split('').each do |i|
			if(not_start_with_vowel?(i))
				sound << i
			else
				return sound
			end
		end
	end
	return ''
end

def not_start_with_vowel?(word)
	case word[0].downcase
	when "a"
		return false
	when "e"
		return false
	when "i"
		return false
	when "o"
		return false
	when "u"
		return false
	else
		return true
	end
end