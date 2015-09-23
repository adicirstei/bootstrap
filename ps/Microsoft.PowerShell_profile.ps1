Import-Module PsGet
Import-Module D:\soft\PSModules\nvm

. "C:\Program Files\Microsoft SDKs\Windows\v7.1\Bin\SetEnv.cmd" /x86
. "C:\Program Files (x86)\Microsoft Visual Studio 10.0\VC\vcvarsall.bat"

function which {
  Param ([String]$Name)
  (Get-Command $Name).Definition
}

function lastnode {
    set-nodeversion $(@(get-nodeversions) | Sort-object | select-object -last 1)
    "Node version $(node -v)"
}

function lastio {
    set-iojsversion $(@(get-iojsversions) | Sort-object | select-object -last 1)
    "Node version $(node -v)"
}
lastnode
