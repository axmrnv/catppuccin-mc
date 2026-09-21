#!/bin/sh

set -e

BASE="https://raw.githubusercontent.com/catppuccin/mc/main"

if [ -n "${MC_PROFILE_ROOT:-}" ] && [ "$MC_PROFILE_ROOT" != "$HOME" ]; then
  SKINS="$MC_PROFILE_ROOT/.local/share/mc/skins"
else
  SKINS="${XDG_DATA_HOME:-"$HOME/.local/share"}/mc/skins"
fi

mkdir -p "$SKINS"

for file in \
  catppuccin.ini \
  catppuccin-latte.ini \
  catppuccin-frappe.ini \
  catppuccin-macchiato.ini \
  catppuccin-mocha.ini
do
  curl -fsSL "$BASE/$file" -o "$SKINS/$file"
done
