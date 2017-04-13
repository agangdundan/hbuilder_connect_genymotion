@echo off

cd /d %ADB_DIR%
if exist "adb_bak.exe" (
    ren adb_bak.exe adb.exe
)

cd /d %MY_HOME%
@start "" "%Genymotion_DIR%player.exe" --vm-name %1

call step4.bat