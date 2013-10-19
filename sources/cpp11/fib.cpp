/*
	http://www.linux.org.ru/forum/talks/9712224?cid=9713824
*/

#include <stdio.h>
#include <iostream>

class Fib
{
     int _value;

  public:
    constexpr Fib(int n) : _value( n ) {}

    constexpr int value() const
    {
        return _value <= 2 ?
            1 :
            Fib(_value - 1).value() + Fib(_value - 2).value();
    }
};

int main()
{
	int n;
	std::cin >> n;

    for(int i=0; i<10; i++)
    {
        int value = Fib(n).value();

        printf("n=%d\n", value);
    }
}
