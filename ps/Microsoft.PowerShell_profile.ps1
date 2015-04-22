Import-Module PsGet
Import-Module D:\soft\PSModules\nvm
Import-Module D:\soft\PSModules\posh-npm
# Load posh-git example profile
. 'D:\soft\PSModules\posh-git\profile.example.ps1'

. "C:\Program Files\Microsoft SDKs\Windows\v7.1\Bin\SetEnv.cmd" /x86
. "C:\Program Files (x86)\Microsoft Visual Studio 10.0\VC\vcvarsall.bat"

$nodeVersions = @(get-nodeversions)
$iojsVersions = @(get-iojsversions)
function lastnode {
    set-nodeversion $($nodeversions | Sort-object)[$nodeversions.length-1]
    $ver = node -v
    Write-Host "Node version $($ver)"
}

function lastio {
    set-iojsversion $($iojsVersions | Sort-object)[$iojsVersions.length-1]
    # set-iojsversion $iojsVersions
    $ver = node -v
    Write-Host "Node version $($ver)"
}

lastio
