#!/bin/bash

g++ -std=c++11 -Ofast fib.cpp || exit
echo 40 | time ./a.out
echo 40 | time ./a.out
