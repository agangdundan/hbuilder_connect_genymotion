@echo off & setlocal EnableDelayedExpansion

set n=0
for /f "usebackq delims=" %%a in ("arraylist.txt") do (
   set /a n+=1
   if !n! geq 1 (
      if !n! leq 3 (
         set os!n!=%%a
      )
   )
)

set/p idx=��������������Androidϵͳ���:
echo ��ѡ���Androidϵͳ��: !os%idx%!
call step3.bat !os%idx%!