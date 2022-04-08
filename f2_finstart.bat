echo Please wait, the installation process is in progress...

xcopy .\softs\Finance\ %~d0\Finance\ /e

mklink "%~d0\Users\Public\Desktop\FinStart.lnk" "%~d0\Finance\FinStart.exe"

mklink "%~d0\ProgramData\Microsoft\Windows\Start Menu\Programs\FinStart.lnk" "%~d0\Finance\FinStart.exe"

echo Finstart installed!
exit /b