@echo off
:start
set unverum=
set /p unverum=Welcome to the Guilty Gear -Strive- Optimiser! Would you like to use the Unverum mod manager for the pak mods? (Y/N):
if not '%unverum%'=='' set unverum=%unverum:0,1%
if '%unverum%'=='Y' goto uyes
if '%unverum%'=='y' goto uyes
if '%unverum%'=='yes' goto uyes
if '%unverum%'=='Yes' goto uyes
if '%unverum%'=='YES' goto uyes
if '%unverum%'=='N' goto uno
if '%unverum%'=='n' goto uno
if '%unverum%'=='no' goto uno
if '%unverum%'=='No' goto uno
if '%unverum%'=='NO' goto uno
echo "%unverum%" is not a valid response. Please try again.
echo.
goto start

:uyes
rename "%LOCALAPPDATA%\GGST\Saved\Config\WindowsNoEditor\Scalability.ini" "Scalability.ini.bak"
copy ".\source\good.ini" "%LOCALAPPDATA%\GGST\Saved\Config\WindowsNoEditor\"
rename "%LOCALAPPDATA%\GGST\Saved\Config\WindowsNoEditor\good.ini" "Scalability.ini"
xcopy /s /q ".\source\~mods\" ".\Pak Files\"
echo Installation complete. Pak files have been copied to this directory for use with Unverum.
@pause
exit

:uno
set dircheck=
set /p dircheck=Is GGST installed in the default Steam directory (C:\Program Files (x86)\Steam\)? (Y/N):
if not '%dircheck%'=='' set dircheck=%dircheck:~0,1%
if '%dircheck%'=='Y' goto yes
if '%dircheck%'=='y' goto yes
if '%dircheck%'=='yes' goto yes
if '%dircheck%'=='Yes' goto yes
if '%dircheck%'=='YES' goto yes
if '%dircheck%'=='N' goto no
if '%dircheck%'=='n' goto no
if '%dircheck%'=='no' goto no
if '%dircheck%'=='No' goto no
if '%dircheck%'=='NO' goto no
echo "%dircheck%" is not a valid response. Please try again.
echo.
goto uno

:yes
rename "%LOCALAPPDATA%\GGST\Saved\Config\WindowsNoEditor\Scalability.ini" "Scalability.ini.bak"
copy ".\source\good.ini" "%LOCALAPPDATA%\GGST\Saved\Config\WindowsNoEditor\"
rename "%LOCALAPPDATA%\GGST\Saved\Config\WindowsNoEditor\good.ini" "Scalability.ini"
xcopy /s ".\source\~mods\" "%PROGRAMFILES(X86)%\Steam\steamapps\common\GUILTY GEAR STRIVE\RED\Content\Paks"
echo Installation complete.
@pause
exit

:no
set dirr=
set /p dirr=Please input the full file path to your Steam library (e.g. steamapps) folder where GGST is installed:
rename "%LOCALAPPDATA%\GGST\Saved\Config\WindowsNoEditor\Scalability.ini" "Scalability.ini.bak"
copy ".\source\good.ini" "%LOCALAPPDATA%\GGST\Saved\Config\WindowsNoEditor\"
rename "%LOCALAPPDATA%\GGST\Saved\Config\WindowsNoEditor\good.ini" "Scalability.ini"
xcopy /s ".\source\~mods\" "%dirr%\common\GUILTY GEAR STRIVE\RED\Content\Paks"
echo Installation complete.
@pause
exit
