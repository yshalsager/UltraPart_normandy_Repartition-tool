adb start-server > nul
@echo off
set p=tmp.txt
echo cd /sbin > %p%
echo./umount -l /dev/block/mmcblk0p18 >> %p%
echo./umount -l /dev/block/mmcblk0p19 >> %p%
echo ./umount -l /dev/block/mmcblk0p21 >> %p%
echo ./umount -l /dev/block/mmcblk0p22 >> %p%
echo ./mke2fs -b 4096 -T ext4 /dev/block/mmcblk0p18 >> %p%
echo ./mke2fs -b 4096 -T ext4 /dev/block/mmcblk0p19 >> %p%
echo ./mke2fs -b 4096 -T ext4 /dev/block/mmcblk0p22 >> %p%
echo ./mke2fs -b 4096 -T ext4 /dev/block/mmcblk0p23 >> %p%
echo ./mke2fs -b 4096 -T ext4 /dev/block/mmcblk0p25 >> %p%
echo ./mke2fs -b 4096 -T ext4 /dev/block/mmcblk0p26 >> %p%
echo busybox mkfs.vfat /dev/block/mmcblk0p21 >> %p%
echo ./mount "/cache" >> %p%
echo exit >> %p%

adb shell < %p%
del %p%
adb kill-server
echo Format Done !
pause
