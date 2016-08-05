Внести: https://www.linux.org.ru/forum/talks/12472479?lastmod=1459247217855#comment-12473105

> rustc -C opt-level=3 fib.rs

```
real    0m1.762s
user    0m1.760s
sys     0m0.000s
```

> rustc -C opt-level=3 -C lto fib.rs

```
real    0m0.178s
user    0m0.177s
sys     0m0.000s
```
