#!/bin/bash

g++ -O3 heap.cpp || exit

source ../../_report.bash

benchmark ./a.out 1 3 "C++ (heap)"

rm a.out
