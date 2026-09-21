$ErrorActionPreference = 'Stop'

$base = 'https://raw.githubusercontent.com/catppuccin/mc/main'

$mcHome = $env:HOME ? $env:HOME : $env:USERPROFILE ? $env:USERPROFILE `
    : [Environment]::GetFolderPath('UserProfile')

$dataRoot = ($env:MC_PROFILE_ROOT -and $env:MC_PROFILE_ROOT -cne $mcHome) `
    ? (Join-Path $env:MC_PROFILE_ROOT '.local' 'share') `
    : $env:XDG_DATA_HOME `
    ? $env:XDG_DATA_HOME `
    : [Environment]::GetFolderPath('LocalApplicationData') `
    ? [Environment]::GetFolderPath('LocalApplicationData') `
    : (Join-Path $mcHome '.local' 'share')

$skins = Join-Path $dataRoot 'Midnight Commander' 'skins'

New-Item -ItemType Directory -Path $skins -Force | Out-Null

@(
  'catppuccin-latte.ini'
  'catppuccin-frappe.ini'
  'catppuccin-macchiato.ini'
  'catppuccin-mocha.ini'
) | ForEach-Object {
  Invoke-WebRequest -Uri "$base/$_" -OutFile (Join-Path $skins $_)
}
