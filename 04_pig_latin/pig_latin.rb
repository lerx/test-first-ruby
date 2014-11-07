def vowel?(c)
	['a', 'e', 'i', 'o', 'u'].include? c
end

def move_consonant(w)
	if not vowel? w[0]
		# check for 'qu' phoneme
		if w.start_with? 'qu'
			w = w[2..-1].concat('qu')
		else
			w = w[1..-1].concat(w[0])
		end
	end
	w
end

def translate(s)
	ret = []
	s.split(/ /).each do |w|
		w = move_consonant(w)
		w = move_consonant(w)
		w = move_consonant(w)
		w.concat('ay')
		ret.push(w)
	end
	ret.join(' ')
end
