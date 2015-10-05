def add(a, b)
	a + b
end

def subtract(a, b)
	a - b
end

def sum(numbers)
	numbers.inject(0){ |sum, x| sum + x }
end

def multiply(factors)
	factors.inject(1){ |total, x| total * x }
end

def power(a, b)
	a ** b
end

def factorial(number)
	return 0 if number == 0
	result = 1
	(1..number).each{ |x| result = result * x }
	result
end