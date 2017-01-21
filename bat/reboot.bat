@Echo off

: time for user input
set waitMins=1
: message to user. one could reboot [N]ow or [C]ancel
echo Press N to reboot [N]ow or C to [C]ancel
set /a waitMins=waitMins*60
: assuming running bat file was a mistake and taking [C]ancel as a default action 
choice /c NC /d C /t %waitMins%
: selecting scenario
goto Label%errorlevel%

:Label1

shutdown -r -t 10 -f

:Label2 

exit
