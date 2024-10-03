@echo off

set InstallDir=C:
set Idx=1

Dism /Get-ImageInfo /ImageFile:%1

echo The %InstallDir% will be formatted and the operating system will be reinstalled
echo %InstallDir% data will be cleared
echo Press Ctrl+C to cancel execution Press any key to continue

pause
format %InstallDir% /q /y /V:OS

Dism /apply-image /imagefile:%1 /index:%idx% /applydir:%InstallDir%

pause
shutdown -r -t 0
