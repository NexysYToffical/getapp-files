@echo off
set version=0.1

:start_screen
cls
echo --------------------------------
echo |  Welcome to your TUI Desktop |
echo |------------------------------|
echo | Press any key to start...    |
echo --------------------------------
pause >nul

:main_desktop
cls
echo --------------------------------------------------------------
echo | Welcome!                                                   |
echo |                                                            |
echo | 1: File Editor                                             |
echo | 2: Software Manager                                        |
echo | 3: Exit to Bash                                            |
echo --------------------------------------------------------------
:: Check HIGHEST first (3, then 2, then 1)
choice /c 123 /n /m "Select: "
if errorlevel 3 exit
if errorlevel 2 goto softwaremanager
if errorlevel 1 goto fileeditor
:: This safety line prevents a crash if something goes wrong
goto main_desktop

:fileeditor
cls
echo --- File Editor ---
set /p filename="Enter filename: "
if not exist "%filename%" type nul > "%filename%"
echo Editing %filename%... (Ctrl+Z then Enter to save)
copy con "%filename%"
:: Go BACK to the desktop when done, don't let it fall into softwaremanager
goto main_desktop

:softwaremanager
cls
echo --- Software Manager ---
echo 1: Back to Desktop
choice /c 1 /n /m "Press 1 to go back"
goto main_desktop