#!/bin/bash

gmcs -optimize+ ./fib.cs || exit
echo mono fib.exe
time mono fib.exe
time mono fib.exe
time mono fib.exe

echo mono --optimize=all fib.exe
time mono --optimize=all fib.exe
time mono --optimize=all fib.exe
time mono --optimize=all fib.exe

echo mono --gc=sgen fib.exe
time mono --gc=sgen fib.exe
time mono --gc=sgen fib.exe
time mono --gc=sgen fib.exe

echo mono --gc=boehm fib.exe
time mono --gc=boehm fib.exe
time mono --gc=boehm fib.exe
time mono --gc=boehm fib.exe
