@echo off & setlocal EnableDelayedExpansion

REM "��ȡAndroidϵͳ�б�"
"%VBOX_MSI_INSTALL_PATH%VBoxManage.exe" list vms > list.txt

REM "����Androidϵͳ�б�"
REM "���arraylist.txt"
cd.>arraylist.txt
set num=0
for /f "delims=^{ tokens=1,*" %%i in (list.txt) do (
	set /a num+=1 
	echo %%i>>arraylist.txt
)

REM "��ʾAndroidϵͳ�б�"
for /f "usebackq delims=" %%a in ("arraylist.txt") do (
   set /a n+=1
   if !n! geq 1 (
      if !n! leq 3 (
         set %%os!n!%%=%%a
         echo !n!. %%a
      )
   )
)

call step2.bat