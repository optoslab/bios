@echo off
set URL=https://www.w3.org/TR/PNG/iso_8859-1.txt
set OUTPUT=file.txt

curl -o %OUTPUT% %URL%
echo Download complete: %OUTPUT%
pause
