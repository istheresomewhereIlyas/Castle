#!/bin/sh
find -iname '*.fa' | while read f; do
	makehmmerdb $f ${f%.fa}.hmm
	echo "$file generating finished, bitch"
done
