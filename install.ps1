$script:installDir = Join-Path $(Get-PSDrive | sort Free -desc | select -first 1).Root tools
$script:tempDir = Join-Path $env:TEMP bootstrap
$script:userInput = Read-Host "Get installation dir ($script:installDir)"
if($script:userInput -ne "") { $script:installDir = $script:userInput }

. .\ps\installGit.ps1
. .\ps\installConsole.ps1
. .\ps\installModules.ps1
