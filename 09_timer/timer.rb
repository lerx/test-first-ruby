class Timer
	def initialize
		@hours = 0
		@minutes = 0
		@seconds = 0
	end

	def seconds=(s)
		if (s >= 3600)
			@hours = (s / 3600.0).floor
			s = s % 3600
		end
		if (s >= 60)
			@minutes = (s / 60.0).floor
			s = s % 60
		end
		@seconds = s
	end

	def seconds
		@seconds
	end

	def time_string
		hours = @hours.to_s.rjust(2, '0')
		minutes = @minutes.to_s.rjust(2, '0')
		seconds = @seconds.to_s.rjust(2, '0')
		"#{hours}:#{minutes}:#{seconds}"
	end
end