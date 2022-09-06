ROBOCOPY %userprofile%\Downloads C:\tempToDelete /mov /minage:3
del C:\tempToDelete /q
