#!/usr/bin/bash
#find /storage/0123-4567/Music/jp -type f -name "*.mp3" | shuf -n 1 | xargs -I {} play {}
# On arch linux requires sox
find ~/docs/music/ -type f -name "*.mp3" | shuf -n 1 | xargs -I {} play {}
