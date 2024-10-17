@echo off
color 0b
title Net Reset
echo Utility to fix networks issues
echo.
echo Make sure to run this as administrator
echo.
pause
netsh winsock reset
pause
cls
netsh int ip reset
pause
cls
netsh interface ipv4 reset
pause
cls
netsh interface ipv6 reset
pause
cls
ipconfig /release
pause
cls
ipconfig /renew
pause
cls
ipconfig /flushdns
pause
cls
ipconfig /all
pause
cls
ipconfig /registerdns
pause
cls
nbtstat -r
pause
cls
nbtstat -rr
pause
cls
echo Finished network optimisation 
echo It is recommended to restart you PC (but not necessary)
pause