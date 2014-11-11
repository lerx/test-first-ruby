class RPNCalculator

	attr_accessor :stack

	def initialize
		@stack = [0]
	end

	def value
		return stack[-1]
	end

	def push(n)
		stack.push(n.to_f)
	end

	def pop
		v = stack.pop
		raise "calculator is empty" if v.nil?
		v
	end

	def plus
		stack.push(pop + pop)
	end

	def minus
		v = pop
		stack.push(pop - v)
	end

	def divide
		v = pop
		stack.push(pop / v)
	end

	def times
		stack.push(pop * pop)
	end

	def tokens(s)
		s.split.map do |i|
			if i.to_i > 0
				i.to_f
			else
				i.to_sym
			end
		end
	end

	def evaluate(s)
		tokens(s).each do |i|
			if (i.is_a?(Float))
				push(i)
			elsif (i.is_a?(Symbol))
				self.public_send(i)
			end
		end
		value
	end

	def *
		times
	end

	def +
		plus
	end

	def -
		minus
	end

	def /
		divide
	end
end