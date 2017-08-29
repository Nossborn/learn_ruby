#write your code here
def add(x, y)
	return x + y
end

def subtract(x, y)
	return x - y
end

def sum(array)
	res = 0
	array.each do |n|
		res += n
	end
	return res
end

def multiply(array)
	res = 1
	array.each do |n|
		res *= n
	end
	return res
end

def power(x, y)
	return x ** y
end

def factorial(n)
	res = 1
	while n > 1
		res*= n
		n -= 1
	end
	return res
end