#!/bin/bash

jrubyc fib.rb || exit

time java -cp '.:/usr/share/java/jruby.jar' fib
time java -cp '.:/usr/share/java/jruby.jar' fib
time java -cp '.:/usr/share/java/jruby.jar' fib
time java -cp '.:/usr/share/java/jruby.jar' fib
time java -cp '.:/usr/share/java/jruby.jar' fib
