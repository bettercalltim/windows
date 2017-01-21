:clean print spool and restart print service
@echo off
echo.
echo Stop spooler . . .
	net stop Spooler
echo Delete print jobs . . .
	ping localhost -n 4 > nul
	del /q %SystemRoot%\system32\spool\printers\*.*
net start Spooler
echo Haliluiah!
ping localhost -n 4 > nul
