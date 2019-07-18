﻿
Param(
  [String] $uri='spotify:playlist:37i9dQZEVXbMDoHDwVN2tF'
)

if (-Not (Get-Process Spotify -ErrorAction SilentlyContinue)) {
  Spotify.exe
  Start-Sleep 7
}

Import-Module $PSScriptRoot\ps-spotify\ps-spotify
Start-Process $uri
Set-SpotifyConnectPlay $uri