$script:consoleDir = Join-Path $script:installDir Console

New-Item $script:consoleDir -type directory -ea SilentlyContinue
copy-item .\bin\console*.*, .\bin\FreeImage*.*, *.ico -destination $script:consoleDir

write-host "Installed Console"
