#!/bin/bash
SCRIPT_FOLLOW=`realpath $0`
SCRIPT=`realpath -s $0`
SCRIPTPATH=`dirname $SCRIPT_FOLLOW`
CALLPATH=`pwd`
me=`basename "$0"`

DIST="dist"
if [ $# -eq 2 ]; then
    DIST=$2
fi

if [ $# -gt 0 ]; then
    make -C $SCRIPTPATH SOURCE="$(pwd)/$1" DIST="$CALLPATH/$DIST"
else
    echo -e "Error: missing arguments\n"
    echo -e "USAGE:"
    echo -e "\t$me <image> <output dir>"
fi
