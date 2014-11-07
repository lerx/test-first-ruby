def measure(n=1)
	times = []
	n.times do
		t = Time.now
		yield
		times.push(Time.now - t)
	end
	times.reduce(:+) / times.count
end