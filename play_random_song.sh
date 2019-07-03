#!/usr/bin/bash
find /media/rocamora/datawin/del/music/Japanese\ Music/ -type f -name "*.mp3" | shuf -n 1 | xargs -I {} play {}
