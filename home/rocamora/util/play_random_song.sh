#!/usr/bin/bash
#find /storage/0123-4567/Music/jp -type f -name "*.mp3" | shuf -n 1 | xargs -I {} play {}
find ~/del/music/jp -type f -name "*.mp3" | shuf -n 1 | xargs -I {} play {}