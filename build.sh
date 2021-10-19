#!/bin/bash

# Build html and organize files into two folders:
# /docs (with absolute links to use on github pages)
# /signal_toolbox (with relative links to files on courses/realtime)

mkdir -p docs
mkdir -p signal_toolbox
cd toolbox

#docs
make clean
make html
cp -r _build/html/* ../docs/
cp -r _build/html/* ../signal_toolbox/
cd ..
zip -r signal_toolbox.zip signal_toolbox