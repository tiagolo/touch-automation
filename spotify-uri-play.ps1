
Param(
  [String] $uri='spotify:playlist:4jkNfY9btZJoAiCO4vYs2U'
)

if (-Not (Get-Process Spotify -ErrorAction SilentlyContinue)) {
  Spotify.exe
  Start-Sleep 7
}

Import-Module .\ps-spotify\ps-spotify
Start-Process $uri
Set-SpotifyConnectPlay $uri