@echo off
:start
set dircheck=
set /p dircheck=Welcome to the Guilty Gear -Strive- Optimiser! Is GGST installed in the default Steam directory (C:\Program Files (x86)\Steam\)? (Tip: If you want to use the .pak mods with the Unverum mod manager, choose "Y")(Y/N):
if not '%dircheck%'=='' set directory=%dircheck:~0,1%
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
goto start

:no
set dirr=
set /p dirr=Please input the full file path to your Steam library (e.g. steamapps) folder where GGST is installed:
rename "%LOCALAPPDATA%\GGST\Saved\Config\WindowsNoEditor\Scalability.ini" "Scalability.ini.bak"
copy ".\source\good.ini" "%LOCALAPPDATA%\GGST\Saved\Config\WindowsNoEditor\"
rename "%LOCALAPPDATA%\GGST\Saved\Config\WindowsNoEditor\good.ini" "Scalability.ini"
xcopy /s ".\source\~mods\" "%dirr%\common\GUILTY GEAR STRIVE\"
echo Installation complete.

:yes
set unverum=
set /p unverum=Would you like to use the Unverum mod manager for the pak mods? (Y/N):
if not '%unverum%'=='' set unverum=%unverum:0,1%
if '%unverum%'=='Y' goto uyes
if '%directory%'=='y' goto uyes
if '%directory%'=='yes' goto uyes
if '%directory%'=='Yes' goto uyes
if '%directory%'=='YES' goto uyes
if '%directory%'=='N' goto uno
if '%directory%'=='n' goto uno
if '%directory%'=='no' goto uno
if '%directory%'=='No' goto uno
if '%directory%'=='NO' goto uno
echo "%directory%" is not a valid response. Please try again.
echo.
goto yes

:uyes
rename "%LOCALAPPDATA%\GGST\Saved\Config\WindowsNoEditor\Scalability.ini" "Scalability.ini.bak"
copy ".\source\good.ini" "%LOCALAPPDATA%\GGST\Saved\Config\WindowsNoEditor\"
rename "%LOCALAPPDATA%\GGST\Saved\Config\WindowsNoEditor\good.ini" "Scalability.ini"
xcopy /s /q ".\source\~mods\" ".\Pak Files\"
echo Installation complete. Pak files have been copied to this directory for use with Unverum.
@pause
exit

:uno
rename "%LOCALAPPDATA%\GGST\Saved\Config\WindowsNoEditor\Scalability.ini" "Scalability.ini.bak"
copy ".\source\good.ini" "%LOCALAPPDATA%\GGST\Saved\Config\WindowsNoEditor\"
rename "%LOCALAPPDATA%\GGST\Saved\Config\WindowsNoEditor\good.ini" "Scalability.ini"
xcopy /s ".\source\~mods\" "%PROGRAMFILES(X86)%\Steam\steamapps\common\GUILTY GEAR STRIVE\"
echo Installation complete.
@pause
exit
