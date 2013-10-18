class Fib(n:Int)
{
    var _value : Int = n

    def value() : Int =
    {
        if(_value <= 2)
            return 1

        val f1 = new Fib(_value - 1)
        val f2 = new Fib(_value - 2)
        return f1.value() + f2.value()
    }
}

object FibTest
{
    def main(args: Array[String]) =
        (1 to 10) foreach (n => Console.println((new Fib(40)).value()))
}
