#!/bin/sh

function run {
  if ! pgrep $1 ;
  then
    $@&
  fi
}
run sxhkd
run $HOME/.config/polybar/launch.sh --shapes
run picom --experimental-backends --config $HOME/.config/picom/picom.conf
run feh --bg-fill  $HOME/Pictures/wallpaper/惊鸿雪垂眸.jpg
run fcitx5
run blueman-applet
run nm-applet
run kdeconnect-indicator
run flameshot
#run conky -c $HOME/.config/conky/system-overview
run thunar --daemon
run xscreensaver --no-splash

