#!/usr/bin/env bash
echo "Input the youtube URL to convert to mp3"
read varname
youtube-dl --ignore-errors --format bestaudio --extract-audio --audio-format mp3 --audio-quality 160K --output "%(title)s.%(ext)s" --yes-playlist $varname
