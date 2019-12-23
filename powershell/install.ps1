Write-Output "Installing modules"
Install-Module posh-git -Scope CurrentUser
Install-Module oh-my-posh -Scope CurrentUser

Write-Output "Copy alias files"
$profileFolder = Split-Path $PROFILE
Copy-Item -Path .\profile\* -Destination $profileFolder -Recurse -Force -Verbose