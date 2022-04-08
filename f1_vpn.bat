if "%PROCESSOR_ARCHITECTURE%"=="AMD64" (goto :kf1-64) else (goto :kf1-86)
exit /b

:kf1-86
echo Please wait, the installation process is in progress...
msiexec /i .\softs\OpenVPN86.msi /qn
echo OpenVPN x86 installed!
exit /b


:kf1-64
echo Please wait, the installation process is in progress...
msiexec /i .\softs\OpenVPN64.msi /qn
echo OpenVPN x64 installed!
exit /b