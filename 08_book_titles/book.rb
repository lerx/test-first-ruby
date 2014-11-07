class Book
	def title
		@title
	end

	def title=(str)
		@title = str.split(/ /).each_with_index { |w, i| w.capitalize! if (not ['and', 'the', 'a', 'an', 'in', 'of'].include? w) or (i == 0) }.join(' ')
	end
end