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

        Fib *f1 = new Fib(_value - 1);
        Fib *f2 = new Fib(_value - 2);

        int n1 = f1->value();
        int n2 = f2->value();

        delete(f1);
        delete(f2);

        return n1+n2;
    }
};

int main()
{
    for(int i=0; i<3; i++)
    {
        Fib *x = new Fib(40);
        printf("n=%d\n", x->value());
        delete(x);
    }

    return 0;
}
