def echo(msg)
	msg
end

def shout(msg)
	msg.upcase
end

def repeat(msg, times=2)
	s = ""
	times.times { s.concat(msg + " ") }
	s.strip
end

def start_of_word(word, i)
	word[0..i-1]
end

def first_word(word)
	word.split(/ /)[0]
end

def titleize(word)
	words = word.split
	(0..words.length-1).each do |i|
		if i == 0 or (not ["and", "the", "over"].include? words[i])
			words[i].capitalize!
		end
	end
	words.join(' ')
end
