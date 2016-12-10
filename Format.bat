adb start-server > nul
@echo off
set p=tmp.txt
umount -l /dev/block/mmcblk0p18 > %p%
umount -l /dev/block/mmcblk0p19 >> %p%
umount -l /dev/block/mmcblk0p21 >> %p%
umount -l /dev/block/mmcblk0p22 >> %p%
mke2fs -b 4096 -T ext4 /dev/block/mmcblk0p18 >> %p%
mke2fs -b 4096 -T ext4 /dev/block/mmcblk0p19 >> %p%
mke2fs -b 4096 -T ext4 /dev/block/mmcblk0p22 >> %p%
busybox mkfs.vfat /dev/block/mmcblk0p21 >> %p%
mount "/cache" >> %p%
echo exit >> %p%

adb shell < %p%
del %p%
adb kill-server
echo This is your partitions table !
pause
