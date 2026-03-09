#!/usr/bin/env bash

set -euo pipefail

WALLPAPER_DIR="$HOME/Pictures/walls/"

WALLPAPER="$(find "$WALLPAPER_DIR" -type f | shuf -n 1)"
MONITOR="$(hyprctl monitors -j | jq -r '.[] | select(.focused) | .name')"

hyprctl hyprpaper wallpaper "$MONITOR, $WALLPAPER, cover"
