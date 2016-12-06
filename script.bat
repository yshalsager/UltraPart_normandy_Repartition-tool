@echo off
color 3f
mode con:cols=60 lines=40
if %1==-run (
	goto menu_work
)
goto end

:clear_var
set menu=-1
set menutext=
set reject=0
goto :eof

:head
cls
ECHO.      -----------------------------------------
ECHO        UltraPart: Re-Partition Nokia X/XL Tool
ECHO                   Version 1.00
ECHO.      -----------------------------------------
ECHO       Developed by YSH ALSAGER (UltraDevs Team)
ECHO.      -----------------------------------------
ECHO           http://www.ultradevs.blogspot.com
ECHO.      -----------------------------------------
goto :eof

:show_work
call :head
echo.
echo    %menutext%
echo   컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴
goto :eof

:menu_work
call :clear_var
call :head
echo.
ECHO. -----------------------------------------
ECHO  Please Boot to Recovery then Connect your 
ECHO  mobile to PC or use reboot option below
ECHO  Make Sure You have installed ADB Drivers  
ECHO. -----------------------------------------
ECHO  Select What do you want to do by Entering number below
echo   컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴
echo.
ECHO  1)Re-Partition Nokia X To System 950MB And Data 2GB
ECHO  2)Re-Partition Nokia XL To System 950MB And Data 2GB
ECHO  3)Restore Nokia X Original Partition Table
ECHO  4)Restore Nokia XL Original Partition Table
ECHO  5)Repair Nokia X Partition Table -For p26 problem-
ECHO. -----------------------------------------
ECHO  d)Install Nokia X/XL Drivers
ECHO  i)Install TWRP 2.8.7 Recovery
ECHO  r)Reboot To TWRP 2.8.7 Recovery
ECHO  c)Check Partition Table
ECHO. -----------------------------------------
ECHO  x) Exit
echo. 
set /P menu= Type menu number then press ENTER: 
if %menu%==1 (
	set menutext=Re-Partition Nokia X
	call PartitionX.bat 
	pause
)
if %menu%==2 (
	set menutext=Re-Partition Nokia XL
	call PartitionXL.bat
	pause
)
if %menu%==3 (
	set menutext=Restore Nokia X Original Partition Table
	call RestoreX.bat
	pause
)
if %menu%==4 (
	set menutext=Restore Nokia XL Original Partition Table
	call RestoreXL.bat
	pause
)
if %menu%==5 (
	set menutext=Repair Nokia X Partition Table -For p26 problem-
	call RepairX.bat
	pause
)
if %menu%==d (
	set menutext=Install Nokia X/XL Drivers
    start /d "drivers" DPInst32.exe	> nul && start /d "drivers" DPInst64.exe > nul && copy drivers\ADB\adb_usb.ini C:\Users\%username%\.android
	pause
)
if %menu%==i (
	set menutext=Install TWRP 2.8.7 Recovery
	call :flash_twrp
	pause
)
if %menu%==r (
	set menutext=Reboot To TWRP 2.8.7 Recovery
	call :boot_recovery
	pause
)
if %menu%==c (
	set menutext=Check Partition Table
	call check.bat
	pause
)
if %menu%==x goto end
goto menu_work

:tool_site
start http://www.ultradevs.blogspot.com
goto :eof

:boot_recovery
echo.
echo ^> Reboot to recovery...
adb kill-server > nul && adb wait-for-device > nul && adb reboot recovery > nul
goto :eof

:flash_twrp
echo.
echo ^> Wait for bootloader ready...
echo ^> and flash TWRP-2.8.7.0...
adb kill-server > nul && adb wait-for-device > nul && adb reboot-bootloader > nul && fastboot -i 0x0421 flash recovery recovery\TWRP-2.8.7.0-normandy.img && fastboot -i 0x0421 boot recovery\TWRP-2.8.7.0-normandy.img
goto :eof

:end
adb kill-server > nul
call :head
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo                     Enjoy increased Storage !!
echo                 Don't Forget to Hit Thanks on XDA
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
call :tool_site
pause > nul
exit
