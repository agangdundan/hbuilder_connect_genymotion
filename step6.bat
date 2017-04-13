@echo off

"%HBuilder_Tools%adb.exe" connect %1 >%2
@ping -n 15 127.1>nul
findstr "connected" %2 >nul &&(
    echo Æô¶¯HBuilder.....
    @start "" "%HBuilder_DIR%HBuilder.exe"
)||exit