#Download and compile ffmpeg_libnvenc from here https://github.com/Brainiarc7/ffmpeg_libnvenc/blob/master/README.md
#libnvenc and script below will need more tweaking when time permits. h265 is yet to be implemped as everything is highly experimental.  


ffmpeg -i /in/file.mp4 -acodec libfaac -ab 128k -ar 44100 -vcodec libnvenc -x264opts no-8x8dct:no-cabac:cqm=flat:bframes=0:weightp=0 -chromaoffset -2 -subq 9 -refs 9 -bf 5 -wpredp 0 -me_range 24 -me_method tesa -flags -loop -deblock 0:0 -crf 20 -maxrate 8000k -bufsize 8000k -qcomp 0.60 -qmin 0 -qmax 69 -qdiff 4 -cplxblur 20.0 -qblur 0.5 -sc_threshold 40 -g 250 /home/out.mp4

