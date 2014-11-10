class Dictionary
	def initialize
		@d = {}
	end

	def entries
		@d
	end

	def keywords
		@d.keys.sort
	end

	def add(h)
		if h.is_a?(Hash)
			@d.merge!(h)
		else
			@d[h] = nil
		end
	end

	def include?(k)
		@d.has_key?(k)
	end

	def find(w)
		results = {}
		@d.each do |k, v|
			if k == w or k.start_with?(w)
				results[k] = v
			end
		end
		results
	end

	def printable
		s = ""
		@d.sort.each_with_index do |p, i|
			if (i == @d.count - 1)
				s += "[#{p[0]}] \"#{p[1]}\""
			else
				s += "[#{p[0]}] \"#{p[1]}\"\n"
			end
		end
		s
	end
end