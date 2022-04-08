title Tools-Molbulak.ru
netsh advfirewall set allprofiles state off
@echo off
:k-main
cls
color 0F


echo 1. Install VPN
echo 2. Install Finstart
echo 3. Install OpenOffice, Chrome, AdobeReader
echo 4. Install Molbulak-Agent
echo 5. Configuration USB port
echo 6. Configuration setting (name,domin)
echo 7. Exit

choice /C:1234567 /N /M "Please select action number..."

IF %ERRORLEVEL% == 1 (goto :k-vpn)
IF %ERRORLEVEL% == 2 (goto :k-finstart)
IF %ERRORLEVEL% == 3 (goto :k-softs)
IF %ERRORLEVEL% == 4 (goto :k-agent)
IF %ERRORLEVEL% == 5 (goto :k-usb)
IF %ERRORLEVEL% == 6 (goto :k-setting)
IF %ERRORLEVEL% == 7 (goto :k-exit)

:k-vpn
cls
call f1_vpn.bat
choice /C:YN /N /M "Return main menu -[Y] or exit -[N]?..."
IF %ERRORLEVEL% == 1 goto :k-main
IF %ERRORLEVEL% == 2 goto :k-exit


:k-finstart
cls
call f2_finstart.bat
choice /C:YN /N /M "Return main menu -[Y] or exit -[N]?..."
IF %ERRORLEVEL% == 1 goto :k-main
IF %ERRORLEVEL% == 2 goto :k-exit

:k-softs
cls
call f3_softs.bat
choice /C:YN /N /M "Return main menu -[Y] or exit -[N]?..."
IF %ERRORLEVEL% == 1 goto :k-main
IF %ERRORLEVEL% == 2 goto :k-exit

:k-agent
cls
call f4_agent.bat
choice /C:YN /N /M "Return main menu -[Y] or exit -[N]?..."
IF %ERRORLEVEL% == 1 goto :k-main
IF %ERRORLEVEL% == 2 goto :k-exit

:k-usb
cls
call f5_usb_on_off.bat
choice /C:YN /N /M "Return main menu -[Y] or exit -[N]?..."
IF %ERRORLEVEL% == 1 goto :k-main
IF %ERRORLEVEL% == 2 goto :k-exit

:k-setting
cls
call f6_basic_config.bat
choice /C:YN /N /M "Return main menu -[Y] or exit -[N]?..."
IF %ERRORLEVEL% == 1 goto :k-main
IF %ERRORLEVEL% == 2 goto :k-exit

:k-exit
netsh advfirewall set allprofiles state on
exit
