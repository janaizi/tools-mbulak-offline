echo  1. Install AcrobatReader
echo  2. Install Chrome
echo  3. Install OpenOffice
echo  4. Install All

choice /C:12345 /N /M "Select for install: "
IF %ERRORLEVEL% == 1 (goto :kf3-acrobatreader)
IF %ERRORLEVEL% == 2 (goto :kf3-chrome)
IF %ERRORLEVEL% == 3 (goto :kf3-openoffice)
IF %ERRORLEVEL% == 4 (goto :kf3-all)

:kf3-acrobatreader
echo Please wait, the installation process is in progress...
.\softs\AcrobatReader.exe /sAll /rs /msi EULA_ACCEPT=YES
echo AcrobatReader installed!
exit /b


:kf3-chrome
echo Please wait, the installation process is in progress...
msiexec /i .\softs\GoogleChromeStandaloneEnterprise.msi /qn
echo Chrome installed!
exit /b


:kf3-openoffice
echo Please wait, the installation process is in progress...
.\softs\OpenOfficeSilent\setup.exe /qn
echo OpenOffice installed!
exit /b

:kf3-all
echo Please wait, the installation process is in progress...

.\softs\AcrobatReader.exe /sAll /rs /msi EULA_ACCEPT=YES
echo AcrobatReader installed!

msiexec /i .\softs\GoogleChromeStandaloneEnterprise.msi /qn
echo Chrome installed!

.\softs\OpenOfficeSilent\setup.exe /qn
echo OpenOffice installed!
exit /b