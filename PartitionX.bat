adb start-server > nul
@echo off
set p=tmp.txt
echo cd /sbin > %p%
echo./umount -l /dev/block/mmcblk0p18 >> %p%
echo./umount -l /dev/block/mmcblk0p19 >> %p%
echo ./umount -l /dev/block/mmcblk0p21 >> %p%
echo ./umount -l /dev/block/mmcblk0p22 >> %p%
echo ./busybox dd if=/dev/block/mmcblk0p20 of=/sdcard/mmcblk0p20.img >> %p%
echo ./busybox dd if=/dev/block/mmcblk0p23 of=/sdcard/mmcblk0p23.img >> %p%
echo ./busybox dd if=/dev/block/mmcblk0p24 of=/sdcard/mmcblk0p24.img >> %p%
echo ./busybox dd if=/dev/block/mmcblk0p25 of=/sdcard/mmcblk0p25.img >> %p%
echo busybox fdisk /dev/block/mmcblk0 >> %p%
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
echo 459550 >> %p%
echo n >> %p%
echo 459552 >> %p%
echo 464672 >> %p%
echo n >> %p%
echo 464674 >> %p%
echo 465954 >> %p%
echo n >> %p%
echo 465956 >> %p%
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