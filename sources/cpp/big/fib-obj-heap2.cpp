#include <stdio.h> 

#define SIZE 20

class FibObj2
{
  private:
     int _value, _foo[SIZE];
     FibObj2 *_prev1, *_prev2;

  public:
    FibObj2(int n)
    {
    	_value = n;
    	_prev1 = _prev2 = 0;

		if(n < 3)
			return;

		_prev1 = new FibObj2(n-1);
		_prev2 = new FibObj2(n-2);
    }

	~FibObj2()
    {
		delete(_prev1);
		delete(_prev2);
	}

    int value()
    {
		if(_value < 3)
			return 1;

		return _prev1->value() + _prev2->value();
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
