@echo off

set argc=0
for %%x in (%*) do set /A argc+=1

if %argc% neq 1 (
   echo "no report file"
   echo "usage: bat name"
   exit /b
)



echo %1 | findstr ".*\..*" > nul
if %errorlevel% equ 0 (
   echo "usage: name with suffix and prefix"
   exit /b
)

exit /b


set f=Find%1.cmake
touch %f%

copy %userprofile%\usr\shell\template-hello-config.cmake %f%
powershell -Command "(gc %f%) -replace 'HELLO', '%1' | Out-File -encoding ASCII %f%"
