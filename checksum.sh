#!/bin/bash
# Check the integrity of a file(s)
# NOTE: For OS X: md5sum --> md5

if [[ $# -lt 2 ]]; then
        echo "Usage: $0 <md5|sha1> <disk.iso>"
        exit 1;
fi


if [ "$1" = "md5" ] && [ -f "$2" ]; then
        md5sum $2
elif [ "$1" = "sha1" ] && [ -f "$2" ]; then
        openssl sha1 $2
fi
