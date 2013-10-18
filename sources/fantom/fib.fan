// http://www.balancer.ru/g/p2054357

class FibObj
{
    Int _value

    new make(Int n) { _value = n }

    public Int value()
    {
        if(_value <= 2)
            return 1

        FibObj f1 := FibObj(_value - 1)
        FibObj f2 := FibObj(_value - 2)

        return f1.value() + f2.value()
    }

    static Void main(Str[] argv)
    {
        for(Int i:=0; i<100; i++)
        {
            FibObj x := FibObj(40)
            echo(x.value())
        }
    }
}
