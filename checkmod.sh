#!/bin/bash
# View recently modified or created files in a specific directory

if [ -z "$1" ]; then
	echo -e "No directory entered"
	echo -e "Usage: $0 <path/to/dir>"
	exit 1;
fi

# View files changed within the last 24 hours
find $1 -mtime -1 -ls

# View files changed within the last 2 hours
#find $1 -mmin -120 -ls

