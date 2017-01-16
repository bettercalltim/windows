$Checkme = whoami /groups | Select-String -Pattern "Администраторы" -SimpleMatch -Quiet
if ($Checkme -eq $true){explorer.exe}
	else {logoff.exe}
