#!/bin/bash

set -e

echo "converting markdown to TeX..."

for f in s_*.md; do
	f2=$( echo $f | sed "s/\.md/\.tex/g" )
  echo "$f -> $f2"
	pandoc -f markdown -t latex "$f" > $f2
done

echo "done."
