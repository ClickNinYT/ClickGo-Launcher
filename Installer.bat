::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAjk
::fBw5plQjdCyDJGyX8VAjFDhYRQeJEmK0OpET/+b34OuDsXEIWuw+dYrflL2NL4A=
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSDk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+JeA==
::cxY6rQJ7JhzQF1fEqQJQ
::ZQ05rAF9IBncCkqN+0xwdVs0
::ZQ05rAF9IAHYFVzEqQJQ
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCyDJGyX8VAjFDhYRQeJEmK0OpEZ++Pv4Pq7kmwpd8oaXM/5+4CyCe4A/kToeZM/mH9Cnas=
::YB416Ek+Zm8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
title .Click!Go Minecraft for Windows 10 Launcher Installer [By ClickNin]  [v1.0]
cls
echo Requiring Administrator Permission (Click Yes on promted window) .
echo Select No will cause errors !
Net session >nul 2>&1 || (PowerShell start -verb runas '%~0' &exit /b)
cls
goto :menu
exit
:--------------------------------------------------------
:menu
cls
mode con cols=98 lines=30
echo.   
echo.   
echo.                                    Click!Go Launcher Installer
echo.                     _________________________________________________________
echo.                    ^|                                                         ^|
Echo.                    ^|   [1] Install Now                                       ^|
Echo.                    ^|                                                         ^|
Echo.                    ^|   [2] Guided Button                                     ^|  
Echo.                    ^|                                                         ^|
Echo.                    ^|   [3] Exit                                              ^|
Echo.                    ^|                   _______________                       ^|
echo.                    ^|                                                         ^| 
Echo.                    ^|_________________________________________________________^|
ECHO.            
choice /C:123 /N /M ".                    Enter Your Choice [1,2,3] : "
if errorlevel 3 goto:exit
if errorlevel 2 goto:learnmore
if errorlevel 1 goto:install
::-----------------------------------------------------
:exit
cls
exit
::-----------------------------------------------------
:learnmore
cls
echo In Install Mode Select
echo 1 . Bundled appx : appx that stored inStoreAppxHere folder before and renamed to MCAPPX
ECHO 2. Custom appx : a custom appx stored in another directory
echo 3 . Custom location : Store game files in a directory than default directory
echo I'm working on custom location feature , but for now i not has ! So in 1.0 will not have custom location feature .
echo Press any key to go back .
pause >nul
cls
goto :menu
::-----------------------------------------------------
:install
cls
echo Copying some files ...
Xcopy Exec1 C:\DONTREMOVEME\MCFILE1\ /E /H /C /I
Xcopy Runtimes C:\DONTREMOVEME\MCTEMP1\ /E /H /C /I
Xcopy StoreAppxHere C:\DONTREMOVEME\MCTEMP2\ /E /H /C /I
cls
echo.      
echo.                                      Select a install mode !
echo.                     _________________________________________________________
echo.                    ^|                                                         ^|
Echo.                    ^|   [1] Install appx on custom location (not work now)    ^|
Echo.                    ^|                                                         ^|
Echo.                    ^|   [2] Install custom appx                               ^|  
Echo.                    ^|                                                         ^|
Echo.                    ^|   [3] Install bundled appx                              ^|
Echo.                    ^|                   _______________                       ^|
echo.                    ^|                                                         ^| 
Echo.                    ^|_________________________________________________________^|
ECHO.            
choice /C:123 /N /M ".                    Enter Your Choice [1,2,3] : "
if errorlevel 3 goto:st1
if errorlevel 2 goto:st2
if errorlevel 1 goto:st3
exit
::-------------------------------------------------------------------------
:st1
cls
cd C:\DONTREMOVEME\MCTEMP1
cls
echo Installing Required Runtimes ...
powershell Add-AppxPackage -Path r1.Appx
powershell Add-AppxPackage -Path r2.Appx
cls
echo Installing Minecraft ...
cd C:\DONTREMOVEME\MCTEMP2
powershell Add-AppxPackage -Path MCAPPX.Appx
cls
echo Tweaking Minecraft ...
cd C:\DONTREMOVEME\MCFILE1
REG IMPORT donttouchme.reg
net stop "ClipSVC"
sc stop ClipSVC
cls
timeout 2 >nul
echo Starting Minecraft first time ...
echo Don't do anything right now to prevent the game from damage !
timeout 5 >nul
explorer.exe shell:appsFolder\Microsoft.MinecraftUWP_8wekyb3d8bbwe!App
timeout 10 >nul
taskkill /IM "RuntimeBroker.exe" /F
echo Waiting for the game to initilize ...
timeout 30 >nul
cls
echo Minecraft is installed susscessfully !
echo Use SmartMC to launch the game everytime .
echo Press any key to end the installer !
pause >nul
goto :menu
exit 
::-----------------------------------------------------
:st2
cls
echo Example : C:\Appx\MC.appx
set /p st2ans=Enter directory to appx you want to install:
cd C:\DONTREMOVEME\MCTEMP1
cls
echo Installing Required Runtimes ...
powershell Add-AppxPackage -Path r1.Appx
powershell Add-AppxPackage -Path r2.Appx
cls
echo Installing Minecraft ...
powershell Add-AppxPackage -Path %st2ans%
cls
echo Tweaking Minecraft ...
cd C:\DONTREMOVEME\MCFILE1
REG IMPORT donttouchme.reg
net stop "ClipSVC"
sc stop ClipSVC
cls
timeout 2 >nul
echo Starting Minecraft first time ...
echo Don't do anything right now to prevent the game from damage !
timeout 5 >nul
explorer.exe shell:appsFolder\Microsoft.MinecraftUWP_8wekyb3d8bbwe!App
timeout 10 >nul
taskkill /IM "RuntimeBroker.exe" /F
echo Waiting for the game to initilize ...
timeout 30 >nul
cls
echo Minecraft is installed susscessfully !
echo Use SmartMC to launch the game everytime .
echo Press any key to end the installer !
pause >nul
goto :menu
exit 
::-----------------------------------------------
:st3
cls
echo Example : C:\Appx\MC.appx
set /p st3ans=Enter directory to appx you want to install without any space:
cd C:\DONTREMOVEME\MCTEMP1
cls
echo Example : If you have a appx named MC.appx in entered below , enter it here : MC.appx or MC.Appx (correct this)
set /p st3nm=Enter the name of appx file :
cls
echo Example : C:\MCData\
set /p st3ans2=Ender directory where the game data will be stored without any space:
cls
echo Installing Required Runtimes ...
powershell Add-AppxPackage -Path r1.Appx
powershell Add-AppxPackage -Path r2.Appx
cls
compact /u "%st3ans%" /i /Q
xcopy %st3nm% %st3ans2% /E /H /C /I
echo Installing Minecraft ...
ren AppxBlockMap.xml _TEMP1.xml
ren AppxSignature.p7x _TEMP2.xml
powershell Add-AppxPackage -register %st3ans2%\AppxManifest.xml
ren _TEMP1.xml AppxBlockMap.xml
ren _TEMP2.p7x AppxSignature.p7x
cls
echo Tweaking Minecraft ...
cd C:\DONTREMOVEME\MCFILE1
REG IMPORT donttouchme.reg
cd C:\DONTREMOVEME\MCFILE2
REG IMPORT dtm.reg
taskkill /IM "RuntimeBroker.exe" /F
net stop "ClipSVC"
sc stop ClipSVC
cls
timeout 2 >nul
echo Starting Minecraft first time ...
echo Don't do anything right now to prevent the game from damage !
timeout 5 >nul
explorer.exe shell:appsFolder\Microsoft.MinecraftUWP_8wekyb3d8bbwe!App
timeout 90 >nul
taskkill /IM "RuntimeBroker.exe" /F
echo Wait time : 20 ~ 40 seconds
timeout 40 >nul
taskkill /IM "RuntimeBroker.exe" /F
timeout 2 >nul
cls
echo Minecraft is installed susscessfully !
echo Use SmartMC to launch the game everytime .
echo Press any key to end the installer !
pause >nul
goto :menu