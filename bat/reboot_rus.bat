@Echo off

: время ожидания реакции в минутах
set waitMins=1
: сообщаем о перезагрузке, даем возможность отменить перезагрузку кнопкой N
echo сервер будет перезагружен через минуту: Нажмите Y, чтобы перезагрузиться без ожидания, или N, чтобы отменить перезагрузку
set /a waitMins=waitMins*60
: по умолчанию выбираем ответ [C]ancel
choice /c YN /d N /t %waitMins%
goto Label%errorlevel%

:Label1

shutdown -r -t 10 -f

:Label2 

exit
