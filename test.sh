#! /bin/bash

assert() {
  expected="$1"
  input="$2"

  ./tinyc "$input" > out.s
  cc -o out out.s
  ./out
  actual="$?"

  if [ "$actual" = "$expected" ]; then
    echo "$input => $actual"
  else
    echo "$input => $expected expected, but got $actual"
    exit 1
  fi
}

assert 0 0
assert 42 42

echo OK
