// http://www.balancer.ru/g/p1619300

using System;

class Fib
{
    private int _value;

    Fib(int n) { _value = n; }

    public int value()
    {
        if(_value <= 2)
            return 1;

        Fib f1 = new Fib(_value - 1);
        Fib f2 = new Fib(_value - 2);

        return f1.value() + f2.value();
    }

    public static void Main()
    {
        Fib x = new Fib(40);
        Console.WriteLine(x.value());
    }
}
