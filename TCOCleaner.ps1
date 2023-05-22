New-Item -ItemType Directory -Force -Path "C:\tempToDelete"

$fileLoca1 = $Env:userprofile + '\Downloads'
<#
$fileLoca2 = $Env:userprofile + '\Pictures'
$fileLoca3 = $Env:userprofile + '\Music'
$fileLoca4 = $Env:userprofile + '\Desktop'
#>

ROBOCOPY $fileLoca1 C:\tempToDelete /E /MOVE /minage:3  /XF *.url *.lnk
<#
ROBOCOPY $fileLoca2 C:\tempToDelete /E /MOVE /minage:3  /XF *.url *.lnk
ROBOCOPY $fileLoca3 C:\tempToDelete /E /MOVE /minage:3  /XF *.url *.lnk
ROBOCOPY $fileLoca4 C:\tempToDelete /E /MOVE /minage:3  /XF *.url *.lnk
#>

Add-Type -AssemblyName Microsoft.VisualBasic
[Microsoft.VisualBasic.FileIO.FileSystem]::Deletedirectory('C:\tempToDelete','OnlyErrorDialogs','SendToRecycleBin')