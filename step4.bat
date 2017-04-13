@echo off
echo 正在启动Android系统.....

@ping -n 60 127.1>nul

SET DEVICES_TXT=devices.txt
SET DEVICES_TMP=devices_tmp.txt

SET Genymotion_Tools=%Genymotion_DIR%tools\
SET HBuilder_Tools=%HBuilder_DIR%tools\

"%Genymotion_Tools%adb.exe" devices|find /v "devices" > %DEVICES_TXT%
findstr /v "^$" %DEVICES_TXT% > %DEVICES_TMP% & del %DEVICES_TXT% & ren %DEVICES_TMP% %DEVICES_TXT%
(for /f "eol=: delims=	" %%i in (%DEVICES_TXT%) do (echo %%i)) > %DEVICES_TMP% & del %DEVICES_TXT% & ren %DEVICES_TMP% %DEVICES_TXT%

call step5.bat