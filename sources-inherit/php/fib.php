<?php

/*
	http://www.balancer.ru/g/p1618896
*/

class FibBase
{
    var $index;

    function __construct($n)
    {
        $this->index = $n;
    }

	function index() { return $this->index; }
}

class Fib extends FibBase
{
    function value()
    {
        if($this->index() <= 2)
            return 1;

        $f1 = new Fib($this->index() - 1);
        $f2 = new Fib($this->index() - 2);

        return $f1->value() + $f2->value();
    }
}

// 1, 1, 2, 3, 5, 8, ..., 
$x = new Fib(40);
echo $x->value()."\n";
