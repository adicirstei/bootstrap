New-Item $(Join-Path $script:installDir PSModules) -type directory -ea SilentlyContinue
write-host "Installed PowerShell Modules"
