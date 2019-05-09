#!/usr/bin/bash

tmpfile=$(mktemp /tmp/freezescreen.XXXXXXXX.png)

# Take a screenshot
maim -u -m 1 $tmpfile

# Open it in fullscreen
# sxiv -bN freezescreen $tmpfile
eog  $tmpfile

rm "$tmpfile"
