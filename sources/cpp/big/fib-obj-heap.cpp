#include <stdio.h> 

#define SIZE 20

class FibObj2
{
  private:
     int _value, _foo[SIZE];
     FibObj2 *_prev1, *_prev2;

	void _init(int n)
	{
		_prev1 = new FibObj2(n-1);
		_prev2 = new FibObj2(n-2);
	}

	void _free()
    {
		delete(_prev1);
		delete(_prev2);
	}

  public:
    FibObj2(int n)
    {
    	_value = n;
    	for(int i=0; i<SIZE; i++)
    		_foo[i] = 0;
    }

    int value()
    {
		if(_value < 3)
			return 1;
		_init(_value);
		int res = _prev1->value() + _prev2->value() + _prev1->foo() + _prev2->foo();
		_free();
		return res;
	}

	int foo()
	{
		int sum = 0;
		for(int i=0; i<SIZE; i++)
			sum += _foo[i];
		return sum;
	}
};

int main()
{
    for(int i=0; i<10; i++)
    {
        FibObj2 *x = new FibObj2(33);
        printf("n=%d\n", x->value());
        delete(x);
    }
    return 0;
}
