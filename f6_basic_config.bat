echo  1. Rename PC
echo  2. Add domain

choice /C:12 /N /M "Select action"
IF %ERRORLEVEL% == 1 (goto :kf6-rename)
IF %ERRORLEVEL% == 2 (goto :kf6-domain)

:kf6-rename
set /P newname= Enter new name for PC:
echo "PC name: %newname%"

choice /C:yn /N /M "Correct PC name, Yes-[Y] No-[N] ?"
IF %ERRORLEVEL% == 2 (goto :kf6-rename)

wmic computersystem where name="%computername%" call rename name=%newname%
echo "Rename PC OK!"
exit /b

:kf6-domain
set /P namedomain= Enter domain:
echo "Domain: %namedomain%"

choice /C:yn /N /M "Correct domain, Yes-[Y] No-[N] ?"
IF %ERRORLEVEL% == 2 (goto :kf6-domain)

set /P domainuser= Enter domain user:
set /P domainpass= Enter domain password:

netdom join %computername% /domain:%namedomain% /userd:%domainuser% /passwordd:%domainpass%
echo "Add domain OK!"
exit /b