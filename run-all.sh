#!/usr/bin/env bash

source ./_report.bash

reportStart

pushd sources >/dev/null
pushd cpp
./stack-run.sh
./heap-run.sh
popd
pushd cpp11
./fib-run.sh
popd
popd >/dev/null
