// via https://www.linux.org.ru/news/google/13124611?cid=13126473

function Fib (number)
{
	this._value = number;
}

Fib.prototype = {
	get value ()
	{
		if (this._value <= 2)
			return 1

		let f1 = new Fib(this._value - 1);
		let f2 = new Fib(this._value - 2);

		return f1.value + f2.value;
	}
}

console.log(new Fib(40).value);
