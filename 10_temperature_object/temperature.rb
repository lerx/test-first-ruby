class Temperature
	def initialize(h = {})
		if h.has_key?(:f)
			@fahrenheit = h[:f]
			@celsius = (@fahrenheit - 32.0) * (5/9.0)
		elsif h.has_key?(:c)
			@celsius = h[:c]
			@fahrenheit = ((9/5.0) * @celsius) + 32
		end
	end

	def in_fahrenheit
		@fahrenheit
	end

	def in_celsius
		@celsius
	end

	def self.from_celsius(celsius)
		self.new({:c => celsius})
	end

	def self.from_fahrenheit(fahrenheit)
		self.new({:f => fahrenheit})
	end
end

class Celsius < Temperature
	def initialize(celsius)
		super({:c => celsius})
	end
end

class Fahrenheit < Temperature
	def initialize(fahrenheit)
		super({:f => fahrenheit})
	end
end