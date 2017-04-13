@echo off & setlocal EnableDelayedExpansion
echo 设置连接中.....

SET CONNECTINFO_TXT=connect_info.txt

cd /d %ADB_DIR%
ren adb.exe adb_bak.exe

taskkill /F /IM adb.exe 1>nul 2>nul

cd /d %MY_HOME%

findstr . %DEVICES_TXT%>nul&&(
set n=0
for /f "usebackq delims=" %%a in ("%DEVICES_TXT%") do (
   set /a n+=1
   if !n! geq 1 (
       if !n! leq 2 (
           call step6.bat %%a %CONNECTINFO_TXT%
       )
   )
)
)||exit