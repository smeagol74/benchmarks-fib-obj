/*
	http://www.balancer.ru/g/p1818582
	Александр Суховерхов
*/

import std.stdio;

class Fib
{
  private:
	int _value;

  public:
	this(int n) { _value = n; }

	int value()
	{
		if(_value <= 2)
			return 1;

		scope Fib f1 = new Fib(_value - 1);
		scope Fib f2 = new Fib(_value - 2);

		return f1.value() + f2.value();
	}
};

int main()
{
	scope Fib x = new Fib(40);
	writefln("n=%d", x.value);

	return 0;
}
