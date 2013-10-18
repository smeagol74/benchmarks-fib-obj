# http://www.balancer.ru/g/p1618868

class Fib:
    def __init__(self, n):
        self._value = n

    def value(self):
        if(self._value <= 2):
            return 1

        f1 = Fib(self._value - 1)
        f2 = Fib(self._value - 2)

        return f1.value() + f2.value()

print Fib(40).value()
