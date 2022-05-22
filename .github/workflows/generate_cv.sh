#!/usr/bin/env bash

# remove pdf if present
[ -f "$1".pdf ] && rm "$1".pdf
[ -f "$1"-unopt.pdf ] && rm "$1"-unopt.pdf

# test if pdf is removed, fail if still present
[ -f "$1".pdf ] && exit 1
[ -f "$1"-unopt.pdf ] && exit 1

xelatex "$1"

# exit if unoptimized pdf is not present
[ -f "$1".pdf ] || exit 1

mv "$1".pdf "$1"-unopt.pdf

# optimize pdf and final output
gs -sDEVICE=pdfwrite -dSAFER -dPDFSETTINGS=/ebook -dColorImageResolution=260 -dPrinted=false -dNOPAUSE -dBATCH -dFastWebView=true -sOutputFile="christos-karamolegkos-$1".pdf "$1"-unopt.pdf

# exit successfully if optimized pdf is present or with error if not present
[ -f "$1".pdf ] && exit 0 || exit 1