@echo off
cls
echo Watching arma2oaserver For Crashes/Restarts...
echo If you want to close arma2oaserver and this script, close the arma2oaserver window and type Y depending on your language followed by Enter.
title Raklatif's Arma2OA Monitor
set becpath="D:\testserver\instance_11_Chernarus\BattlEye\Bec"
cd /d %becpath%
:arma2oaserver
start "BattleEye Extended Control" "BEC Control Epoch.bat"
echo (%time%) arma2oaserver started.
start /wait "arma2" /min /high "D:\testserver\arma2oaserver.exe" -cpuCount=2 -maxmem=2047 -exThreads=1 -port=2302 "-config=instance_11_Chernarus\config.cfg" "-cfg=instance_11_Chernarus\basic.cfg" "-profiles=instance_11_Chernarus" -name=instance_11_Chernarus "-mod=@DayZ_Epoch;@DayZ_Epoch_Server;"
echo (%time%) WARNING: arma2oaserver closed or crashed, restarting.
// TIMEOUT /T 180 /NOBREAK
goto arma2oaserver
