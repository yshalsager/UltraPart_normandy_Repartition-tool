adb start-server > nul
@echo off
set p=tmp.txt
echo cd /sbin > %p%
echo./umount -l /dev/block/mmcblk0p18 >> %p%
echo./umount -l /dev/block/mmcblk0p19 >> %p%
echo ./umount -l /dev/block/mmcblk0p21 >> %p%
echo ./umount -l /dev/block/mmcblk0p22 >> %p%
echo n >> %p%
echo 16932 >> %p%
echo 134690 >> %p%
echo n >> %p%
echo 134692 >> %p%
echo 147489 >> %p%
echo n >> %p%
echo 147491 >> %p%
echo 147493 >> %p%
echo n >> %p%
echo 147495 >> %p%
echo 166691 >> %p%
echo n >> %p%
echo 166693 >> %p%
echo 452515 >> %p%
echo n >> %p%
echo 452517 >> %p%
echo 464675 >> %p%
echo n >> %p%
echo 464677 >> %p%
echo 465955 >> %p%
echo n >> %p%
echo 465957 >> %p%
echo 469795 >> %p%
echo n >> %p%
echo 469797 >> %p%
echo 477184 >> %p%
echo t >> %p%
echo 18 >> %p%
echo 83 >> %p%
echo t >> %p%
echo 19 >> %p%
echo 83 >> %p%
echo t >> %p%
echo 20 >> %p%
echo 4c >> %p%
echo t >> %p%
echo 21 >> %p%
echo c >> %p%
echo t >> %p%
echo 22 >> %p%
echo 83 >> %p%
echo t >> %p%
echo 23 >> %p%
echo 83 >> %p%
echo t >> %p%
echo 24 >> %p%
echo 7d >> %p%
echo t >> %p%
echo 25 >> %p%
echo 83 >> %p%
echo t >> %p%
echo 26 >> %p%
echo 83 >> %p%
echo w >> %p%

adb shell < %p%
del %p%
adb kill-server
echo Done !
echo Don't Forget To Format
echo And Install ROM Again
pause
