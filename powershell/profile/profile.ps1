$profileFolder = Split-Path $PROFILE

. $profileFolder\gitAliases.ps1
. $profileFolder\fileAliases.ps1

Import-Module posh-git
Import-Module oh-my-posh
Set-Theme Paradox

