#!/bin/bash

read -r -p "Welcome to the Guilty Gear -Strive- Optimiser! Is GGST installed in the default Steam directory? (Y/N):" response
if [[ $response == "y" || $response == "Y" || $response == "yes" || $response == "Yes" || $response == "YES" ]]
then cp ./source/good.ini ~/.steam/steam/steamapps/compatdata/1384160/pfx/drive_c/users/steamuser/AppData/Local/GGST/Saved/Config/WindowsNoEditor/
mv ~/.steam/steam/steamapps/compatdata/1384160/pfx/drive_c/users/steamuser/AppData/Local/GGST/Saved/Config/WindowsNoEditor/Scalability.ini ~/.steam/steam/steamapps/compatdata/1384160/pfx/drive_c/users/steamuser/AppData/Local/GGST/Saved/Config/WindowsNoEditor/Scalability.ini.bak
mv ~/.steam/steam/steamapps/compatdata/1384160/pfx/drive_c/users/steamuser/AppData/Local/GGST/Saved/Config/WindowsNoEditor/good.ini ~/.steam/steam/steamapps/compatdata/1384160/pfx/drive_c/users/steamuser/AppData/Local/GGST/Saved/Config/WindowsNoEditor/Scalability.ini
cp -r ./source/~mods ~/.steam/steam/steamapps/common/GUILTY\ GEAR\ STRIVE/RED/Content/Paks
echo Installation complete.
exit 0

elif [[ $response == "n" || $response == "N" || $response == "no" || $response == "No" || $response == "NO" ]]
then read -r -p "Please input the full file path for your Steam library (e.g. steamapps) folder where GGST is installed:" path
cp ./source/good.ini $path/compatdata/1384160/pfx/drive_c/users/steamuser/AppData/Local/GGST/Saved/Config/WindowsNoEditor/
mv $path/compatdata/1381460/pfx/drive_c/users/steamuser/AppData/Local/GGST/Saved/Config/WindowsNoEditor/Scalability.ini $path/compatdata/1381460/pfx/drive_c/users/steamuser/AppData/Local/GGST/Saved/Config/WindowsNoEditor/Scalability.ini.bak
mv $path/compatdata/1381460/pfx/drive_c/users/steamuser/AppData/Local/GGST/Saved/Config/WindowsNoEditor/good.ini $path/compatdata/1381460/pfx/drive_c/users/steamuser/AppData/Local/GGST/Saved/Config/WindowsNoEditor/Scalability.ini
cp -r ./source/~mods $path/common/GUILTY\ GEAR\ STRIVE/RED/Content/Paks
echo Installation complete.
exit 0

else 
echo Invalid response. Please try again.
fi
