#!/bin/bash

ICONS_PLUGIN_DIR="$HOME/.config/sketchybar/plugins/icon_map_fn.sh"

if [ "$SENDER" = "space_windows_change" ]; then
  space="$(echo "$INFO" | jq -r '.space')"
  apps="$(echo "$INFO" | jq -r '.apps | keys[]')"

  icon_strip=" "
  if [ "${apps}" != "" ]; then
    while read -r app
    do
      icon_strip+=" $($ICONS_PLUGIN_DIR $app)"
    done <<< "${apps}"
  else
    icon_strip=" —"
  fi

  sketchybar --set space."$space" label="$icon_strip"
fi
