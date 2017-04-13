#!/bin/bash

set -x

rm -f *.pdf *.aux *.log

pdflatex Matthew_Leeds_*_CV.tex

IFS='
'
for file in `ls -1 *.pdf *.tex`; do
    newname=$(echo "$file" | sed "s/[0-9]\{4\}\+-[0-9]\{2\}\+-[0-9]\{2\}\+/$(date --iso-8601)/")
    mv "$file" "$newname"
done
