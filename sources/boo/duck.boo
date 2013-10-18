// http://www.balancer.ru/g/p1813113

class Fib:
    _value as duck

    def constructor(n as duck):
        _value = n

    def value() as duck:
        if(_value <= 2):
            return 1

        return Fib(_value - 1).value() + Fib(_value - 2).value()

print Fib(40).value()
