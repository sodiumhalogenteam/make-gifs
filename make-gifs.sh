#!/bin/bash
# make gifs with this script
# setup: brew install ffmpeg gifsicle
# to run: $ sh make-gifs.sh
# make a alias for the above into: makegifs

for file in $(ls ~/Desk/make-gifs/*.MOV);
  do ffmpeg -i $file -vf 'scale=(iw*sar)*max(250/(iw*sar)\,250/ih):ih*max(250/(iw*sar)\,250/ih), crop=250:250' -r 10 -f gif - | gifsicle --optimize=3 --delay=1 > ~/Desk/make-gifs/done/${file##*/}.gif
done