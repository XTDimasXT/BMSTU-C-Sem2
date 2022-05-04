#!/bin/bash
if [ $# -lt 2 ]; then
	exit 1
fi
in="${1}"
out="${2}"
args=""

if [ $# -gt 2 ]; then
	args="${3}"
fi


if [ -n "$USE_VALGRIND" ]; then
	eval "valgrind --log-file=valgrind_log ../../app.exe '$args' < ${in} > out.txt"
else
	eval "../../app.exe '$args' < ${in} > out.txt"
fi
if test $? -ne 0; then
	exit 1
fi


bash ./comparator.sh "$out" ./out.txt
if test $? -eq 0; then
	exit 0
else
	exit 1
fi
