class Fixnum
	def in_words
		return "zero" if self == 0

		n = self

		ones = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
		teens = ['ten', 'eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']
		tens = ['ten', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']

		big = ['hundred', 'thousand', 'million', 'billion', 'trillion']

		s = []

		# segment number into easier to manage chunks of three
		segs = n.to_s.reverse.scan(/.{1,3}/).map { |s| s.reverse.to_i }

		segs.each_with_index do |seg, i|
			if seg > 0
				w = []
				w << [ones[seg / 100 - 1], 'hundred'] if seg >= 100

				if seg % 100 > 0
					if seg % 100 >= 10 && seg % 100 < 20
						# teens
						w << teens[seg % 100 - 10]
					else
						w << tens[seg % 100 / 10 - 1] if seg % 100 >= 20
						w << ones[seg % 10 -1 ] if seg % 10 > 0
					end
				end

				if not w.empty?
					w << big[i] if i > 0
					if i > 0
						s = w + s
					else
						s.push(w)
					end
				end
			end
		end

		s.join(' ')
	end
end