#!/bin/bash

if [ -f "super_secret_key.txt ]; then
	echo "Found it!" > found.log
else
	ls super_secret_key.txt 2>/dev/null
	echo "Ne fart"
fi
