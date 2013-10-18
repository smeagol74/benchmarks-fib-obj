#!/bin/bash

gdc -O3 stack.d || exit
time ./a.out


