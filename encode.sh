#!/bin/bash
# HandBrakeCLI script to convert videos within a folder.

# Assing OUT to desired output folder. Make sure OUT folder has the right permissions and ownership. 
OUT="/ram"

for i in *
do

# Modify presets as needed. 
HandBrakeCLI -i "$i" "${i%.*}" -o "$OUT"/"${i%.*}.mp4" -e x264 -q 27 -E fdk_aac -B 96k -6 stereo-R 44.1 -x cabac=1:ref=5:analyse=0x133:me=umh:subme=9:chroma-me=1:deadzone-inter=21:deadzone-intra=11:b-adapt=2:rc-lookahead=60:vbv-maxrate=10000:vbv-bufsize=10000:qpmax=69:bframes=5:b-adapt=2:direct=auto:crf-max=51:weightp=2:merange=24:chroma-qp-offset=-1:sync-lookahead=2:psy-rd=1.00,0.15:trellis=2:min-keyint=23:partitions=all
done

