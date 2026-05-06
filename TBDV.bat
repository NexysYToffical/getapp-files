echo Loading text based desktop enviorment...
echo This is a work in progress, expect bugs and missing features.
set version=0.1
echo Version: %version%
echo.
timeout /t 2 >nul
echo Starting desktop...
timeout /t 2 >nul
echo.
echo --------------------------------
echo | Info                         |
echo |------------------------------|
echo |                              |
echo |  .  This desktop enviorment  |
echo |  |  is still in development  |
echo |     and errors can happen.   |
echo |                              |
echo |  Press any key to continue   |
echo ---------------------------------
pause >nul
echo Starting desktop...
cls
echo --------------------------------------------------------------
echo |                                                            |
echo | Welcome!                                                   |
echo |                                                            |
echo | 1: File Editor                                             |
echo | 2: Software Manager                                        |
echo |                                                            |
echo |                                                            |
echo |                                                            |
echo |                                                            |
echo |                                                            |
echo |                                                            |
echo |                                                            |
echo |                                                            |
echo |                                                            |
echo --------------------------------------------------------------
choice /c 1234567890 /n /m " "
if errorlevel 1 goto fileeditor
if errorlevel 2 goto softwaremanager
:fileeditor
cls
echo File Editor
echo This is a simple file editor. It allows you to create and edit text files.
echo.
echo Enter the name of the file you want to edit (or create):
set /p filename=
if not exist "%filename%" (
    echo File does not exist. Creating new file...
    type nul > "%filename%"
)
echo Editing file: %filename%
echo Type your text below. Press Ctrl+Z and then Enter to save and exit.
copy con "%filename%"
goto end
:softwaremanager
cls
echo Software Manager
echo This is a simple software manager. It allows you to install and uninstall software.
echo.
echo 1: Install Software
echo 2: Uninstall Software
echo 3: Back to Main Menu
choice /c 123 /n /m " "
if errorlevel 1 goto installsoftware
if errorlevel 2 goto uninstallsoftware
if errorlevel 3 goto mainmenu
:installsoftware
cls
echo Install Software
echo This feature is not yet implemented. Please check back later.
echo Press any key to return to the software manager.
pause >nul
goto softwaremanager
:uninstallsoftware
cls
echo Uninstall Software
echo This feature is not yet implemented. Please check back later.
echo Press any key to return to the software manager.
pause >nul
goto softwaremanager
:mainmenu
cls
goto start
:end
echo Thank you for using the text based desktop enviorment. Goodbye!
timeout /t 2 >nul