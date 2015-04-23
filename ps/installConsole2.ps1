$script:consoleDir = Join-Path $script:installDir Console2

New-Item $script:consoleDir -type directory -ea SilentlyContinue
copy-item .\bin\console.chm, .\bin\Console.exe -destination $script:consoleDir
