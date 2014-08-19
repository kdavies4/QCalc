#!/bin/bash
# List the TODO tags in various files.

locations="hooks/pre-commit "$(find . \( -name '*.py' -or -name '*.sh' -or -name '*.md' -or -name '*.mo' -or -name '*.mos' -or -name '*.txt' -or -name '*.css' \) ! \( -name 'TODO*' -or -name 'tidy.py' \))

grep TODO $locations -n --colour=always |
  sed -re  's/^([^:]+:[^:]+):(\x1b\[m\x1b\[K)[[:space:]]*(.*)/\1\x01\2\3/' |
    column -s $'\x01' -t
# The sed part removes the leading whitespace.
echo
echo See also the issues at https://github.com/kdavies4/QCalc/issues.
