New-Item -ItemType Directory -Force -Path "C:\tempToDelete"

$fileLoca1 = $Env:userprofile + '\Downloads'
$fileLoca2 = $Env:userprofile + '\Pictures'
$fileLoca3 = $Env:userprofile + '\Music'
$fileLoca4 = $Env:userprofile + '\Desktop'

Write-Host "Test Change"


ROBOCOPY $fileLoca1 C:\tempToDelete /E /MOVE /minage:3  /XF *.url *.lnk *.rdp
ROBOCOPY $fileLoca2 C:\tempToDelete /E /MOVE /minage:3  /XF *.url *.lnk *.rdp
ROBOCOPY $fileLoca3 C:\tempToDelete /E /MOVE /minage:3  /XF *.url *.lnk *.rdp
ROBOCOPY $fileLoca4 C:\tempToDelete /E /MOVE /minage:3  /XF *.url *.lnk *.rdp

If(!(test-path -PathType container $fileLoca1))
{
      New-Item -ItemType Directory -Path $fileLoca1
}
If(!(test-path -PathType container $fileLoca2))
{
      New-Item -ItemType Directory -Path $fileLoca2
}
If(!(test-path -PathType container $fileLoca3))
{
      New-Item -ItemType Directory -Path $fileLoca3
}
If(!(test-path -PathType container $fileLoca4))
{
      New-Item -ItemType Directory -Path $fileLoca4
}

Add-Type -AssemblyName Microsoft.VisualBasic
[Microsoft.VisualBasic.FileIO.FileSystem]::Deletedirectory('C:\tempToDelete','OnlyErrorDialogs','SendToRecycleBin')