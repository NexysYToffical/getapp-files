echo Welcome to Startup Message Changer!
echo What text should be shown upon startup?
set /p startupmessage=
cd ..
cd sys
echo %startupmessage% > welcome.msg
cd ..
cd bin
echo Startup message changed successfully!