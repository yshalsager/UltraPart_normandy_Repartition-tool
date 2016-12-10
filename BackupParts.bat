adb start-server > nul
@echo off
set p=tmp.txt
echo cd /sbin > %p%
echo ./busybox dd if=/dev/block/mmcblk0p20 of=/sdcard/mmcblk0p20.img >> %p%
echo ./busybox dd if=/dev/block/mmcblk0p23 of=/sdcard/mmcblk0p23.img >> %p%
echo ./busybox dd if=/dev/block/mmcblk0p24 of=/sdcard/mmcblk0p24.img >> %p%
echo ./busybox dd if=/dev/block/mmcblk0p25 of=/sdcard/mmcblk0p25.img >> %p%
echo ./busybox dd if=/dev/block/mmcblk0p26 of=/sdcard/mmcblk0p26.img >> %p%
echo exit >> %p%

adb shell < %p%
del %p%
adb kill-server
echo Done !
pause