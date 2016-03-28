#!/bin/bash

g++ -O3 stack.cpp || exit
time ./a.out

rm a.out
