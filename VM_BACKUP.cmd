@Echo Off

For /f "Tokens=1-3 Delims=/ " %%a In ('Date /t') Do Set FD=%%a%a1%%%b%a2%%%c%a3%%
For /f "Tokens=2-8 Delims=: " %%e In ('Time /t') Do Set Now=%FD%%%e%%f%a4%%%g%a5%

set BAK=%~dp0%Now%-%COMPUTERNAME%
If Not exist "%BAK%" mkdir "%BAK%


dism /capture-image /imagefile:%BAK%\%Now%-%COMPUTERNAME%.wim /capturedir:C:\ /name:"%Now% %COMPUTERNAME%" /compress:max

pause