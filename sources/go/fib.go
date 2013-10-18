/*
	Источник: http://paste.ubuntu.com/6258900/
	via: http://www.linux.org.ru/forum/talks/9712224?cid=9712655
*/

package main

import (
	"fmt"
)

type Fib struct {
	value int
}

func NewFib(n int) *Fib {
	return &Fib{n}
}

func (F *Fib) Value() int {
	if F.value <= 2 {
		return 1
	}
	return NewFib(F.value-1).Value() + NewFib(F.value-2).Value()
}

func main() {
	for i := 0; i < 10; i++ {
		F := NewFib(40)
		fmt.Printf("Result = %d\n", F.Value())
	}
}
