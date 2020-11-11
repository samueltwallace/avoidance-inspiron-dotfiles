# avoidance-insprion Dotfiles

These are the dotfiles for my insprion running Void Linux. I've done a couple small interesting things you may be interested in...

 * Random Sized Terminals: My alacritty window sizes are randomly generated. See [sxhkdrc](/.config/sxhkd/sxhkdrc) for info.

 * Rofi PDF Menu: I have a rofi script that searches my $HOME for PDFs, then displays a rofi menu with the list, and on select, opens in zathura. See [pdf.sh](/.config/rofi/pdf.sh) for details.

 * Weather Menu: Using wttr.in, I made a weather menu on polybar that opens a forecast on click. See [weather.sh](/.config/polybar/weather.sh) and [weather-big.sh](/.config/polybar/weather-big.sh).

 * Global Theming: I use PyWal to theme polybar, alacritty, vim, and firefox all in one.

You can curl my neofetch! All you need to do is 

```
curl https://raw.githubusercontent.com/samueltwallace/avoidance-inspiron-dotfiles/master/neofetch
```
Note that my vimrc is not here; it is in another repo [here](https://github.com/samueltwallace/modvim)

## Screenshots

I use a laptop and a monitor at different resolutions, and so screenshots come out with a lot of blackspace on the lower resolution screen. So that's why there's black space on the left.

![Pic](/2020-09-20-132823_3286x1080_scrot.png)
![Pic](/2020-11-08-225731_3286x1080_scrot.png)
