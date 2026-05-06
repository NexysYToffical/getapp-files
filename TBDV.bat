@echo off
:: [Loading sequence remains the same...]
echo Loading text based desktop enviorment...
set version=0.1
timeout /t 1 >nul

:start_screen
cls
echo --------------------------------
echo | Info                         |
echo |------------------------------|
echo | Press any key to continue    |
echo ---------------------------------
pause >nul

:main_desktop
cls
echo --------------------------------------------------------------
echo |                                                            |
echo | Welcome!                                                   |
echo |                                                            |
echo | 1: File Editor                                             |
echo | 2: Software Manager                                        |
echo |                                                            |
echo --------------------------------------------------------------
:: Check for HIGHEST errorlevel first
choice /c 12 /n /m " "
if errorlevel 2 goto softwaremanager
if errorlevel 1 goto fileeditor
goto main_desktop

:fileeditor
cls
echo --- File Editor ---
set /p filename="File name: "
if not exist "%filename%" type nul > "%filename%"
echo Type text. Press Ctrl+Z then Enter to save.
copy con "%filename%"
goto main_desktop

:softwaremanager
cls
echo --- Software Manager ---
echo 1: Install
echo 2: Uninstall
echo 3: Back
choice /c 123 /n /m " "
:: Again, check in descending order
if errorlevel 3 goto main_desktop
if errorlevel 2 goto uninstallsoftware
if errorlevel 1 goto installsoftware

:installsoftware
echo Not implemented.
pause
goto softwaremanager

:uninstallsoftware
echo Not implemented.
pause
goto softwaremanager