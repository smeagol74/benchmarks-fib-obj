#include <stdio.h>
#include <boost/pool/singleton_pool.hpp>

class Fib
{
  private:
     int _value;
  public:
    Fib(int n) { _value = n; }
    static void* operator new (size_t size);
    static void operator delete (void *p);
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
struct MyPoolTag { };

typedef boost::singleton_pool< MyPoolTag, 32, boost::default_user_allocator_new_delete, boost::details::pool::null_mutex > FibPool;

void* Fib::operator new (size_t size)
{
void *p = FibPool::malloc();
return p;
}
void Fib::operator delete (void *p)
{
FibPool::free(p);
}
int main()
{
    for(int i=0; i<10; i++)
    {
        Fib *x = new Fib(40);
        printf("n=%d\n", x->value());
        delete(x);
    }
    return 0;
}
