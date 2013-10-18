#!/bin/bash

gdc -O3 heap.d || exit
time ./a.out
time ./a.out
time ./a.out
time ./a.out
time ./a.out
