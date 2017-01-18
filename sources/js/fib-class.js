// via https://gist.github.com/mkusher/6e27b25a189d4d0669b45831dfb5bfd7
// via Telegram: https://t.me/prophp7

class Fib
{
	constructor(n)
	{
		this._value = n;
	}

	value()
	{
		if(this._value <= 2)
			return 1;

		const f1 = new Fib(this._value - 1);
		const f2 = new Fib(this._value - 2);

		return f1.value() + f2.value();
	}
}

x = new Fib(40);

console.log(x.value());
