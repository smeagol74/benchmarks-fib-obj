#include <stdio.h>
#define SIZE 20

/* +++++++++++++++++++ */

namespace stack
{
class FibObj2
{
private:
  int _value, _foo[SIZE];
  public:
    FibObj2 ( int n )
          : _value ( n )
            {
                int * end = _foo + SIZE;
                    for ( int * i = _foo; i != end; i++ )
                          *i = 0;
                            }
                            
                              int value() const
                                {
                                    if ( _value <= 2 )
                                          return 1;
                                              FibObj2 _prev1( _value - 1 );
                                                  FibObj2 _prev2( _value - 2 );
                                                      return _prev1.value() + _prev2.value() + _prev1.foo() + 
                                                      _prev2.foo();
                                                        }
                                                        
                                                          int foo() const
                                                            {
                                                                int sum = 0;
                                                                    const int * end = _foo + SIZE;
                                                                        for ( const int * i = _foo; i != end; i++ )
                                                                              sum += *i;
                                                                                  return sum;
                                                                                    }
                                                                                    };
                                                                                    }

int main()
{
  for ( int i = 0; i < 10; i++ )
    {
        //orig::FibObj2 *x = new orig::FibObj2 ( 33 );
            //optimized::FibObj2 *x = new optimized::FibObj2 ( 33 );
                stack::FibObj2 *x = new stack::FibObj2 ( 33 );
                    printf ( "n=%d\n", x->value() );
                        delete ( x );
                          }
                            return 0;
                            }