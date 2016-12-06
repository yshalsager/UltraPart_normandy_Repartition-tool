adb start-server > nul
@echo off
set p=tmp.txt
echo cd /sbin > %p%
echo ./busybox dd if=/dev/block/mmcblk0p20 of=/sdcard/mmcblk0p20.img >> %p%
echo ./busybox dd if=/dev/block/mmcblk0p23 of=/sdcard/mmcblk0p23.img >> %p%
echo ./busybox dd if=/dev/block/mmcblk0p24 of=/sdcard/mmcblk0p24.img >> %p%
echo ./busybox dd if=/dev/block/mmcblk0p25 of=/sdcard/mmcblk0p25.img >> %p%
echo busybox fdisk /dev/block/mmcblk0 >> %p%
echo d >> %p%
echo 26 >> %p%
echo d >> %p%
echo 25 >> %p%
echo d >> %p%
echo 24 >> %p%
echo d >> %p%
echo 23 >> %p%
echo d >> %p%
echo 22 >> %p%
echo d >> %p%
echo 21 >> %p%
echo d >> %p%
echo 20 >> %p%
echo d >> %p%
echo 19 >> %p%
echo d >> %p%
echo 18 >> %p%
echo n >> %p%
echo 16932 >> %p%
echo 75810 >> %p%
echo n >> %p%
echo 75812 >> %p%
echo 88610 >> %p%
echo n >> %p%
echo 88612 >> %p%
echo 88614 >> %p%
echo n >> %p%
echo 88616 >> %p%
echo 242213 >> %p%
echo n >> %p%
echo 242215 >> %p%
echo 413477 >> %p%
echo n >> %p%
echo 413479 >> %p%
echo 418597 >> %p%
echo n >> %p%
echo 418599 >> %p%
echo 419877 >> %p%
echo n >> %p%
echo 419879 >> %p%
echo 469797 >> %p%
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
echo w >> %p%
echo ./busybox dd if=/sdcard/mmcblk0p20.img of=/dev/block/mmcblk0p20 >> %p%
echo ./busybox dd if=/sdcard/mmcblk0p23.img of=/dev/block/mmcblk0p23 >> %p%
echo ./busybox dd if=/sdcard/mmcblk0p24.img of=/dev/block/mmcblk0p24 >> %p%
echo ./busybox dd if=/sdcard/mmcblk0p25.img of=/dev/block/mmcblk0p25 >> %p%
echo exit >> %p%

adb shell < %p%
del %p%
adb kill-server
echo Done !
echo Don't Forget To WIPE System,Data,Cache And Internal Storage
echo And Install ROM Again
pause