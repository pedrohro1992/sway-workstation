#!/usr/bin/env bash

hidden="__hidden"

app_id=$(swaymsg -t get_tree | jq -r '.. | select(.focused? == true).app_id')

if [ -n "$app_id" ] && [ "$app_id" != "null" ]; then
  swaymsg "[app_id=\"$app_id\"] move container to workspace $hidden"
  swaymsg "workspace back_and_forth"
else
  class=$(swaymsg -t get_tree | jq -r '.. | select(.focused? == true).window_properties.class')
  swaymsg "[class=\"$class\"] move container to workspace $hidden"
  swaymsg "workspace back_and_forth"
fi
