#!/usr/bin/env bash

count=$(swaymsg -t get_tree | jq '[.. | select(.workspace? == "__hidden")] | length')

if [ "$count" -gt 0 ]; then
  echo "{\"text\":\"󰍹 $count\",\"class\":\"active\"}"
else
  echo "{\"text\":\"\",\"class\":\"inactive\"}"
fi
