#!/bin/bash

# ffmpeg "${outarray[@]}" -filter_complex amix=inputs=$FILE_COUNT:duration=longest merged.mp3

DIRECTORY="./fadr"
FILES=$(find $DIRECTORY -type f -name "*.mp3" | sort -n | tr '\n' '|')
FILE_COUNT=4
echo $FILES


ffmpeg $FILES -filter_complex amix=inputs=$FILE_COUNT:duration=longest merged.mp3
