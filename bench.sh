#!/bin/bash

# install merl-an
# opam pin add merl-an https://github.com/3Rafal/merl-an#occurrent-bench-backend
# opam install merl-an

# update submodules
git submodule update --init --recursive

# run merl-an
merl-an benchmark -s 1 -p projects/irmin/src/irmin/append_only.ml --data=bench

# print results
cat bench/bench.json
