# sway-workstation
# My Sway Setup (Fedora + Wayland)

Custom Sway configuration focused on:

- Minimalism
- macOS-like keybindings
- Catppuccin theme integration
- Clean Alt-Tab behavior
- Application-level window hiding
- Waybar + Rofi visual coherence

---

## Features

### Window Management

- `Alt+Tab` → Cycle tiling windows (ignores floating & scratchpad)
- `Alt+Shift+Tab` → Reverse cycle
- `Alt+\`` → Cycle windows within same application
- `Alt+H` → Hide all windows of current application
- `Alt+Shift+H` → Restore hidden windows

Hidden windows are moved to an internal workspace (`__hidden`) and tracked with a Waybar indicator.

---

## Theming

- Catppuccin (Mocha)
- Themed:
  - Sway
  - Waybar
  - Rofi
  - GTK

All components visually harmonized.

---

## Components

- Sway (Wayland compositor)
- Waybar
- Rofi (Wayland build)
- swaymsg + jq (for window control scripts)

---

## Scripts

Located in:
~/.config/sway/scripts/

Includes:

- `hide-app.sh`
- `restore-hidden.sh`
- `hidden-count.sh`

---

## Requirements

- Fedora (tested on Fedora 43)
- Wayland session
- jq
- Nerd Font (for Waybar icons)

---

## Philosophy

- No external daemons for window switching
- Pure Sway where possible
- Deterministic keybindings
- Clean, composable configuration

---

## Installation

Clone into:
~/.config/sway
~/.config/waybar
~/.config/rofi


Adjust paths inside config files if necessary.

---

## License

MIT
