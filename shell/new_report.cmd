@echo off

set argc=0
for %%x in (%*) do set /A argc+=1

if %argc% neq 1 (
   echo "no report file"
   echo "usage: bat report_name.tex"
   exit /b
)

set f=%1
if a%~x1 neq a.tex (
   set f=%1.tex
)

md pic fig

set drty=%~dp0
copy %drty%\structure_report.tex %~dp1
type %drty%\template_report > %f%


for /f "delims= " %%T in ('robocopy /L . . /njh /njs') do set "TAB=%%T"


set file_name=%f:~0,-4%

echo #only nmake.exe are supported > Makefile
echo pdf: >> Makefile
echo %TAB%xelatex %f% >> Makefile
echo. >> Makefile
echo clean: >> Makefile
echo %TAB%del %file_name%.aux >> Makefile
echo %TAB%del %file_name%.log >> Makefile
