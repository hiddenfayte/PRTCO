write-host "Starting Cleanup Process"

Start-Transcript -Path "C:\TCOCleaner\transcript0.txt"

try {

    write-host "Checking for updated code."
    Invoke-WebRequest -Uri https://raw.githubusercontent.com/hiddenfayte/PRTCO/main/TCOCleaner.bat -OutFile .\TCOCleaner.bat
    Invoke-WebRequest -Uri https://raw.githubusercontent.com/hiddenfayte/PRTCO/main/TCOCleaner.ps1 -OutFile .\TCOCleaner.ps1
    write-host "Files Successfully downloaded"
    $ScriptToRun = $PSScriptRoot+"\TCOCleaner.bat"

    write-host "Variable PSScriptRoot = " + $PSScriptRoot
    write-host "Variable ScriptToRun = " + $ScriptToRun

    Start-Process $ScriptToRun

} catch {
    "An error occurred that could not be resolved."
}

Stop-Transcript