<?hh

/*
	http://www.balancer.ru/g/p1618896
*/

class Fib
{
    var $value;
    function __construct(int $n): int
    {
        $this->value = $n;
    }

    function value(): int
    {
        if($this->value <= 2)
            return 1;

        $f1 = new Fib($this->value - 1);
        $f2 = new Fib($this->value - 2);

        return $f1->value() + $f2->value();
    }
}

$x = new Fib(40);
echo $x->value()."\n";
