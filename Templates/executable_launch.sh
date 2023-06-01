#!/usr/bin/env bash

THEME="chnvok"

killall -q polybar
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

CONFIG_DIR=$(dirname $0)/themes/$THEME/config.ini

# Set polybar on multiple screens 
# https://github.com/polybar/polybar/issues/763
for m in $(polybar --list-monitors | cut -d":" -f1); do
    MONITOR=$m polybar --reload main -c $CONFIG_DIR&
done
else
  polybar --reload main -c $CONFIG_DIR&
fi
