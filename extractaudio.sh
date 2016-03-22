#Check audio tracks with ffmpeg -i

ffmpeg -i /input.mp4 -map 0:0 -map 0:1 -acodec copy -vcodec copy out.mp4 
