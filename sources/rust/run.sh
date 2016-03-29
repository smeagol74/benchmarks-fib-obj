#!/bin/bash

rustc -C opt-level=3 fib.rs

time ./fib

rm fib
