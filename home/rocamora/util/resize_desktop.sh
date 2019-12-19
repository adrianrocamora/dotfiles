#!/usr/bin/env sh

echo "Rescaling background with nitrogen"
nitrogen --restore
echo "Killing Conky.."
killall conky
echo "Starting Conky.."
start_conky_maia

feh --bg-fill ~/wallpapers/fav/toga01.jpg
