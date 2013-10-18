#!/bin/bash

ocamlopt -ccopt -O3 fib.ml || exit
time ./a.out
time ./a.out
time ./a.out
time ./a.out
time ./a.out
