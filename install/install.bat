Title Install AAO
Echo off
echo 4
echo This Script will install AAO
pause
winget install --id Git.Git -e --source winget
cd C:\Users\%USERNAME%\
git clone https://github.com/MarshyMelloow/aao/ production
start C:\Users\%USERNAME%\
exit
