#!/bin/bash

javac FibLocals.java

time java FibLocals
time java FibLocals
time java FibLocals

unlink FibLocals.class
