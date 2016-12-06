adb start-server > nul
@echo off
set p=tmp.txt
echo fdisk -l /dev/block/mmcblk0 > %p%
echo exit >> %p%

adb shell < %p%
del %p%
adb kill-server
echo This is your partitions table !
pause
