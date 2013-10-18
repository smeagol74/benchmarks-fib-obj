// http://www.balancer.ru/g/p1618864

class Fib
{
    private final int _value;

    Fib(int n) { _value = n; }

    public int value()
    {
        if(_value <= 2)
            return 1;

        Fib f1 = new Fib(_value - 1);
        Fib f2 = new Fib(_value - 2);

        return f1.value() + f2.value();
    }

    public static void main(String[] argv)
    {
        for(int i=0; i<10; i++)
        {
            Fib x = new Fib(40);
            System.out.println(x.value());
        }
    }
}
