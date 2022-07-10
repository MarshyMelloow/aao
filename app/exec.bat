echo on
color 4
title Strting FiveM, Teamspeak, and Cad...
color a 
start "AlaskaPD Sonoran Cad.url"
echo Exec Teamspeak C:\Program Files\TeamSpeak 3 Client\ts3client_win64.exe
cd C:\Program Files\TeamSpeak 3 Client
start ts3client_win64.exe
color 4
REM echo Exec Sornoran Cad
REM cd  C:\Users\%USERNAME%\AppData\Local\Programs\sonorancad\
REM start "Sonoran CAD.exe"
color a
echo Starting FiveM
start C:\Users\%USERNAME%\AppData\Local\FiveM\FiveM.exe
echo Starting Inter Webs
start C:\Users\%USERNAME%\Documents\TxAdmin.bat
echo Success
cd app/
cscript MessageBox.vbs "Script Success"
execute C:\Users\%USERNAME%\Documents\TxAdmin.bat
pause
