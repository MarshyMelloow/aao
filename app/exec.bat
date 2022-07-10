echo off
git pull https://github.com/MarshyMelloow/aao production
color 4
title Strting FiveM, Teamspeak, and Cad...
color a 
cd shortcuts
start https://sonorancad.com/menu
echo Exec Teamspeak C:\Program Files\TeamSpeak 3 Client\ts3client_win64.exe
cd C:\Program Files\TeamSpeak 3 Client
start ts3client_win64.exe
color a
echo Starting FiveM
start https://cfx.re/join/mm567a
echo Starting Inter Webs
cd C:\FiveMAPD\app
start TxAdmin.bat
echo Success
cd ..
cd app
cscript MessageBox.vbs "Script Success"
execute C:\Users\%USERNAME%\Documents\TxAdmin.bat
