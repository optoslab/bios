@echo off
set url=https://claykers.com/
set file=%USERPROFILE%\Downloads\downloaded_file.exe
wget "%url%" -O "%file%"
