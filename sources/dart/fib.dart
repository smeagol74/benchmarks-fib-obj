class Fib
{
  int n;
  Fib(this.n);
  int value()
  {
    if(n <= 2 )
    {
      return 1;
    }
    Fib f1 = new Fib(n-1);
    Fib f2 = new Fib(n-2);
    return f1.value() + f2.value();
  }
}

void main() {
  print(new Fib(40).value());
}
