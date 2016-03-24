#!/bin/bash

# https://trac.ffmpeg.org/wiki/Map
# ffmpeg script to extract audio tracks of a video file within a folder.
OUT="/ram"

for i in *
do

# Modify as needed. 
ffmpeg -i "$i" "${i%.*}" -map 0:0 -map 0:1 -acodec copy -vcodec copy "$OUT" 
done 








