#!/usr/bin/env zsh

PATH="$HOME/.local/bin:$PATH"

PDF="$(find $HOME/**/*.pdf | rofi -p Zathura -dmenu -i)"
if [[ -f "$PDF" ]] 
then
	zathura "$PDF"
fi
