@echo off

setlocal enabledelayedexpansion
setlocal

set TRASH_DIR=E:\.trash

set y=%date:~-10,-6%
set m=%date:~-5,-3%
set d=%date:~-2%

set c=%time:~0,2%
set n=%time:~3,2%
set s=%time:~6,2%

for %%i in (%*) do (
    rem set STAMP=%y%_%m%_%d%_%c%_%n%_%s%
    set STAMP=%random%
    echo move %%i to %TRASH_DIR%\%%i_%STAMP%
    move /Y %%i %TRASH_DIR%\%%i_%STAMP%
)

