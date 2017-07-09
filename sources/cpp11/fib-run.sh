#!/bin/bash

g++ -std=c++11 -Ofast fib.cpp || exit

source ../../_report.bash

benchmark "echo 40 | ./a.out" 2 1 "C++11"

rm a.out
