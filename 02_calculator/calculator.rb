def add(a, b)
	a + b
end

def subtract(a, b)
	a - b
end

def sum(nums = [])
	if nums.empty?
		0
	else
		nums.reduce(:+)
	end
end

def multiply(*args)
	args.reduce(:*)
end

def power(x, n)
	x ** n
end

def factorial(n)
	if n == 0
		1
	else
		n * factorial(n-1)
	end
end
