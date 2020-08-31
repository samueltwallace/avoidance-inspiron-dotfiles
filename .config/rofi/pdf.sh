#!/bin/bash

PATH="$HOME/.local/bin:$PATH"

PDFS="$(find $HOME/Documents -name *.pdf)"
PDFS="$(find $HOME/repos -name *.pdf)\n$PDFS"
PDF="$(echo "$PDFS" | rofi -p Zathura -dmenu -i)"
if [[ -f "$PDF" ]] 
then
	zathura "$PDF"
fi
