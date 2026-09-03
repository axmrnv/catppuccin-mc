$ErrorActionPreference = 'Stop'

$base = 'https://raw.githubusercontent.com/catppuccin/mc/main'
$skins = Join-Path $env:LOCALAPPDATA 'Midnight Commander' 'skins'

New-Item -ItemType Directory -Path $skins -Force

@(
  'catppuccin-latte.ini'
  'catppuccin-frappe.ini'
  'catppuccin-macchiato.ini'
  'catppuccin-mocha.ini'
) | ForEach-Object { Invoke-WebRequest -Uri "$base/$_" -OutFile (Join-Path $skins $_) }
