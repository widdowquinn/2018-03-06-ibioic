#!/usr/bin/env bash
#
# Make .pdf versions of markdown notebooks

for fn in *.md
do
    pandoc -f markdown -t latex -o ${fn%.md*}.pdf ${fn}
done
