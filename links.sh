#!/bin/bash

if [ $# -eq 2 ] ; then
	grep -Po '<a.*?>' $1 | grep -Po 'href="http.*?"' | sed -E 's/href="(.*?)"/\1/' | sort | uniq > $2
else
	echo "usage: scraping.sh [url] [file]"
fi

