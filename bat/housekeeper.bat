: simple housekeeper that swipes all files older than 60 days
@echo off
forfiles -p "E:\Backup sql\Full" -s -m *.* /D -60 /C "cmd /c del @path"
