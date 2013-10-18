// http://www.balancer.ru/g/p1618867

class Fib:
	_value as uint

	def constructor(n as uint):
		_value = n

	def value() as uint:
		if(_value <= 2):
			return 1

		return Fib(_value - 1).value() + Fib(_value - 2).value()

print Fib(40).value()
