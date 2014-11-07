def reverser
	yield.split(/ /).each { |i| i.reverse! }.join(' ')
end

def adder(a=0)
	a > 0 ? yield + a : yield.next
end

def repeater(n=1)
	n.times { yield }
end