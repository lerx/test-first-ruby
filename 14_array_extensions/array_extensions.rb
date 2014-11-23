class Array
	def sum
		empty? ? 0 : reduce(:+)
	end

	def square
		map { |i| i * i }
	end

	def square!
		map! { |i| i * i }
	end
end