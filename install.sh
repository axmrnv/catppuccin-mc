#!/bin/sh

BASE="https://raw.githubusercontent.com/catppuccin/mc/main"
SKINS="$HOME/.local/share/mc/skins"

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
