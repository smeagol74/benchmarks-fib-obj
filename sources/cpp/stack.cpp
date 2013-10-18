#include <stdio.h>

class Fib
{
  private:
     int _value;

  public:
    Fib(int n) { _value = n; }

    int value()
    {
        if(_value <= 2)
            return 1;

        Fib f1 = Fib(_value - 1);
        Fib f2 = Fib(_value - 2);

        return f1.value() + f2.value();
    }
};

int main()
{
    for(int i=0; i<10; i++)
    {
        Fib x = Fib(40);
        printf("n=%d\n", x.value());
    }
    return 0;
}
