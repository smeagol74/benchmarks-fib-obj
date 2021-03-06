<?php

/*
	http://www.balancer.ru/g/p1618896
*/

class Fib
{
    var $value;
    function __construct($n)
    {
        $this->value = $n;
    }

    function value()
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
