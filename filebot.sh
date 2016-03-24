#!/bin/bash

find /Download/movies/ -type f -name "*.srt" -exec rm -f {} \; && filebot -script fn:renall /Download/movies/Completed -non-strict --db TheMovieDB --output /Movies/720p\ Collection/ && filebot -script fn:cleaner /Download/movies/Completed && cd /Download/movies/Completed && rm -rf * && filebot -script fn:renall /Download/joy -non-strict --db TheMovieDB --output /Movies/1080p\ Collection/  && filebot -script fn:cleaner /Download/joy  && cd /Download/joy && rm -rf *

