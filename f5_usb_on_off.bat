echo  1. On USB port
echo  2. Off USB port

choice /C:12 /N /M "Select option ON-[1]  OFF-[2]: "
IF %ERRORLEVEL% == 1 (goto :kf5-on)
IF %ERRORLEVEL% == 2 (goto :kf5-off)

:kf5-on
reg add HKLM\SOFTWARE\Policies\Microsoft\windows\RemovableStorageDevices /v Deny_All /t REG_DWORD /d "0" /f
echo USB storage port is enabled!
exit /b

:kf5-off
reg add HKLM\SOFTWARE\Policies\Microsoft\windows\RemovableStorageDevices /v Deny_All /t REG_DWORD /d "1" /f
echo USB storage port is disabled!
exit /b