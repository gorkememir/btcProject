#!/bin/bash

FILENAME="/home/ubuntu/btcProject/historicalDifference"
FILESIZE=$(stat -c%s "$FILENAME")

echo "File size of $FILENAME is: $FILESIZE bytes"

while [ $FILESIZE -gt 100000 ]
	do
	tail -n +2 "$FILENAME" > "$FILENAME.tmp" && mv "$FILENAME.tmp" "$FILENAME"
	FILESIZE=$(stat -c%s "$FILENAME")
	#echo "File size of $FILENAME is: $FILESIZE bytes"
	done
