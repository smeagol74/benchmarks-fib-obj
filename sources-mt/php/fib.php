<?php

/*
	http://www.balancer.ru/g/p1618896
*/

define('THREADS_LIMIT', 10);

class FibBase
{
	static $threads = 0;
	static $threads_limit = 10;

    var $index;
    var $result = NULL;

    function __construct($n)
    {
        $this->index = $n;
    }

	function index() { return $this->index; }
	function result() { return $this->result; }
}

class Fib extends FibBase
{

	function run()
	{
		if($this->threads++ < THREADS_LIMIT)
		{
			$pid = pcntl_fork();

			if($pid == -1)
				exit("Could not forl");

			if($pid) // we are the parent
				return $this->pid = $pid;

			echo 'r';
		}
	}

	function wait()
	{
		if(!$this->pid)
			return;

		pcntl_waitpid($this->pid, $status);
		echo 'e';
	}

    function value()
    {
        if($this->index <= 2)
			return 1;

        $f1 = new Fib($this->index() - 1);
        $f2 = new Fib($this->index() - 2);

		$f1->run();
		$f2->run();

		$f1->wait();
		$f2->wait();

        return $f1->result() + $f2->result();
    }
}

$x = new Fib(5);
echo $x->value()."\n";
