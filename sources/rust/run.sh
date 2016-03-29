#!/bin/bash

rustc -O fib.rs

time ./fib

rm fib
