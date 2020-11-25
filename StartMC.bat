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
::Zh4grVQjdCyDJGyX8VAjFDhYRQeJEmK0OpEZ++Pv4Pq7kmwpd8oaXM/5+4CyE/QS+FHJVtgozn86
::YB416Ek+Zm8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
title .Click!Go Minecraft for Windows 10 Launcher [By ClickNin]  [v1.0]
Net session >nul 2>&1 || (PowerShell start -verb runas '%~0' &exit /b)
mode con cols=98 lines=30
echo.
echo.
echo.                                    Click!Go Launcher Interface
echo.                     _________________________________________________________
echo.                    ^|                                                         ^|
Echo.                    ^|   [1] Launch Minecraft                                  ^|
Echo.                    ^|                                                         ^|
Echo.                    ^|   [2] Exit the launcher                                 ^|  
Echo.                    ^|                                                         ^|
Echo.                    ^|                   _______________                       ^|
echo.                    ^|                                                         ^| 
Echo.                    ^|_________________________________________________________^|
ECHO.       
choice /C:12 /N /M ".                    Enter Your Choice [1,2] : "
if errorlevel 2 goto:exit
if errorlevel 1 goto:launch
exit
::------------------------------------------------------------
:launch
cls
echo Starting Minecraft ...
timeout 3 >nul
cd C:\DONTREMOVEME\MCFILE1\
REG IMPORT donttouchme.reg
net stop "ClipSVC"
sc stop ClipSVC
explorer.exe shell:appsFolder\Microsoft.MinecraftUWP_8wekyb3d8bbwe!App
timeout 10 >Nul
taskkill /IM "RuntimeBroker.exe" /F
timeout 10 >nul
echo Minecraft is launched !
echo Press any key to exit the launcher !
pause >nul
exit
::------------------------------------------------------
:exit
exit

