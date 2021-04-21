@echo off

set TRASH_DIR=E:\.trash

call :date_time_func

for %%i in (%* ) do  ( 
    set f=%%i
    set f_e=%f:~-1%
setlocal EnableDelayedExpansion
    set f_h=!f:~0,-1!

    echo move %%i to %TRASH_DIR%\%date_time%_%%i
    if "%f_e%"=="\" ( move /Y !f:~0,-1! %TRASH_DIR%\%date_time%_!f:~0,-1! ) else ( move /Y %%i %TRASH_DIR%\%date_time%_%%i  )  
)

goto :eof

:date_time_func
:: timestamp YYYY-MM-DD_HH-MM-SS
@echo off
for /f "delims=" %%a in ('wmic OS Get localdatetime  ^| find "."') do set dt=%%a
set date_time=%dt:~0,4%-%dt:~4,2%-%dt:~6,2%_%dt:~8,2%-%dt:~10,2%-%dt:~12,2%
goto :eof
