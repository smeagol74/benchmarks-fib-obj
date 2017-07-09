#!/usr/bin/env bash

g++ -O3 stack.cpp || exit

source ../../_report.bash

benchmark ./a.out 2 10 "C++ (stack)"

rm a.out
