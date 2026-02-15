#!/usr/bin/env bash

hidden="__hidden"
current=$(swaymsg -t get_workspaces | jq -r '.[] | select(.focused==true).name')

swaymsg "workspace $hidden"
swaymsg "move container to workspace $current"
swaymsg "workspace $current"
