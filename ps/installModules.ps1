New-Item $(Join-Path $script:installDir PSModules) -type directory -ea SilentlyContinue

# Install PsGet
(new-object Net.WebClient).DownloadString("http://psget.net/GetPsGet.ps1") | iex

install-module nvm
install-module posh-git

write-host "Installed PowerShell Modules"
