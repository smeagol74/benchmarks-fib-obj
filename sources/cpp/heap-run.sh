#!/bin/bash

g++ -O3 fib-obj-heap.cpp || exit
time ./a.out

