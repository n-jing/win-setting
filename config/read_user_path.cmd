@echo off

for /F "skip=2 tokens=1,2*" %%N in ('%SystemRoot%\System32\reg.exe query "HKCU\Environment" /v "Path" 2^>nul') do if /I "%%N" == "Path" call set "UserPath=%%P" & goto UserPathRead

echo There is no user PATH defined.
echo/
pause
goto :EOF

:UserPathRead
echo The user PATH is: %UserPath%
echo/
set "UserPath="
pause
