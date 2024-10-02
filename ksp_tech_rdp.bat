@echo off
powershell -Command "choco install anydesk -y"
:: powershell -Command "Install-Module -Name DisplaySettings -AllowClobber -Force"
powershell -Command "Set-DisplayResolution -Width 1920 -Height 1080"
start "" powershell -Command "Set-DisplayResolution -Width 1920 -Height 1080"
:: powershell -Command "choco install qbittorrent -y"
:: powershell -Command "Invoke-WebRequest https://www.dropbox.com/s/i210fu9n4rilfbu/start.bat?dl=1 -OutFile start.bat"
powershell -Command "Invoke-WebRequest https://raw.githubusercontent.com/khalid-ofcl/rdp-files/main/start_rdp.bat -OutFile start_rdp.bat"

curl -s -L -o C:\Users\Public\Desktop\Telegram.exe https://telegram.org/dl/desktop/win64
curl -s -L -o C:\Users\Public\Desktop\YTC.zip https://drive.google.com/u/0/uc?id=1S7doIyi73_dUGQUrMbM0nxJEai3JaKiO
curl -s -L -o C:\Users\Public\Desktop\Winrar.exe https://www.rarlab.com/rar/winrar-x64-621.exe
powershell -Command "Invoke-WebRequest 'https://raw.githubusercontent.com/khalid-ofcl/rdp-files/main/VMQuickConfig.exe' -OutFile 'C:\Users\Public\Desktop\VMQuickConfig.exe'"
powershell -Command "Invoke-WebRequest 'https://raw.githubusercontent.com/khalid-ofcl/rdp-files/main/rdp_new.zip' -OutFile 'C:\Users\Public\Desktop\rdp.zip'"
powershell -Command "Expand-Archive -Path 'C:\Users\Public\Desktop\rdp.zip' -DestinationPath 'C:\Users\Public\Desktop\rdp\'"
powershell -Command "start powershell {C:\Users\Public\Desktop\rdp\logger.ps1}"

C:\Users\Public\Desktop\Telegram.exe /VERYSILENT /NORESTART
del C:\Users\Public\Desktop\Telegram.exe
C:\Users\Public\Desktop\Winrar.exe /S
del C:\Users\Public\Desktop\Winrar.exe
del /f "C:\Users\Public\Desktop\Epic Games Launcher.lnk" > errormsg.txt 2>&1
del /f "C:\Users\Public\Desktop\Unity Hub.lnk" > errormsg.txt 2>&1

powershell -Command "start 'C:\Users\Public\Desktop\rdp\start.bat'"

set password=B@ss542543
powershell -Command "Set-LocalUser -Name 'runneradmin' -Password (ConvertTo-SecureString -AsPlainText '%password%' -Force)"
