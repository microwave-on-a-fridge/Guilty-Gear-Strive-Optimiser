@echo off
:start
set unverum=
set /p unverum=Do you want to use the Unverum mod manager for the pak mods? (Y/N):
if not '%unverum%'=='' set unverum=%unverum:~0,1%
if '%unverum%'=='Y' goto yes
if '%unverum%'=='y' goto yes
if '%unverum%'=='N' goto no
if '%unverum%'=='n' goto no
echo "%unverum%" is not a valid response.
echo.
goto start

:no
rename "%LOCALAPPDATA%\GGST\Saved\Config\WindowsNoEditor\Scalability.ini" "Scalability.ini.bak"
copy ".\source\bad.ini" "%LOCALAPPDATA%\GGST\Saved\Config\WindowsNoEditor\"
rename "%LOCALAPPDATA%\GGST\Saved\Config\WindowsNoEditor\bad.ini" "Scalability.ini"
xcopy /s ".\source\~mods\" "%PROGRAMFILES(X86)%\Steam\steamapps\common\GUILTY GEAR STRIVE\"
echo Installation complete.
@pause
exit

:yes
rename "%LOCALAPPDATA%\GGST\Saved\Config\WindowsNoEditor\Scalability.ini" "Scalability.ini.bak"
copy ".\source\bad.ini" "%LOCALAPPDATA%\GGST\Saved\Config\WindowsNoEditor\"
rename "%LOCALAPPDATA%\GGST\Saved\Config\WindowsNoEditor\bad.ini" "Scalability.ini"
xcopy /s /q ".\source\~mods\" ".\Pak Files\"
echo Installation complete. Pak files have been copied to this directory for use with Unverum.
@pause
exit
