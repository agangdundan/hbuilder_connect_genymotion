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

set/p idx=请输入想启动的Android系统序号:
echo 您选择的Android系统是: !os%idx%!
call step3.bat !os%idx%!