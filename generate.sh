#!/bin/bash

DIST="dist"
if [ $# -eq 2 ]; then
    DIST=$2
fi

echo `pwd`/$1;

if [ $# -gt 0 ]; then
    make -C "/usr/share/favicon-generator" SOURCE="`pwd`/$1" DIST="`pwd`/$DIST"
else
    echo -e "Error: missing arguments\n"
    echo -e "USAGE:"
    echo -e "\t`basename "$0"` <image> <output_dir>"
fi
