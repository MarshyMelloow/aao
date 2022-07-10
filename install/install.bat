@echo off
set install-dir=%cd%
cls
Title Install AAO
color 
echo Running Checks.
echo Running Checks..
echo Running Checks...
echo Running Checks.....
if exist "C:\Program Files\TeamSpeak 3 Client\ts3client_win64.exe" goto choice
if not exist "C:\Program Files\TeamSpeak 3 Client\ts3client_win64.exe" goto dependents


:dependents
color
echo You do no have teamspeak installed in the default location.
set /P c=Do you want to continue the install? NOTE: This could cause problems with the script(Y/N)
if /I "%c%" EQU "Y" goto :install
if /I "%c%" EQU "N" goto :abort
if /I "%c%" EQU "Yes" goto :install
if /I "%c%" EQU "No" goto :abort
color 4
cls
echo Invalid option 
echo Please Retry
timeout /t 2 /nobreak > NUL
color
cls
goto :dependents


:choice
cls
echo This Script will install AAO
set /P c=Are yousure you want to install? (Y/N)
if /I "%c%" EQU "Y" goto :install
if /I "%c%" EQU "N" goto :abort
if /I "%c%" EQU "Yes" goto :install
if /I "%c%" EQU "No" goto :abort
color 4
cls
echo Invalid option 
echo Please Retry
timeout /t 2 /nobreak > NUL
color
cls
goto :choice

:install
winget install --id Git.Git -e --source winget
cd C:\Users\%USERNAME%\
git clone https://github.com/MarshyMelloow/aao/
cd C:\Users\%USERNAME%\aao\app
move "C:\Users\%USERNAME%\aao\app\FiveM Auto Start.lnk" "C:\Users\%USERNAME%\Desktop\"
cd %install-dir%
rm "install.bat"
color a
echo Successfully installed!
exit



:abort
Title Aborting AAO Install 
color 4
echo Aborting AAO Install...
timeout /t 3 /nobreak > NUL
color a
Echo Aborted
timeout /t 2 /nobreak > NUL
exit
