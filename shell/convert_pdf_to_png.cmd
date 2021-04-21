@echo off

set gs="D:\software\gs9.54.0\bin\gswin64.exe"
set tmp=E:\tmp

call :date_time_func
call :setfile %1
set output_f=%filename%_%date_time%-%%03d.png

%gs% -dBATCH -dNOPAUSE -sDEVICE=pnggray -r600 -dUseCropBox -sOutputFile=%tmp%\%output_f% %1

set png_file=%tmp%\%filename%_%date_time%-*.png
set magick="D:\software\ImageMagick-7.0.11-Q16\magick.exe"

%magick% montage -border 0 -tile 1x200 -mode concatenate -geometry +11+22 -quality 100 %png_file%  ./%filename%.png

del %png_file%
goto :eof


:date_time_func
:: timestamp YYYY-MM-DD_HH-MM-SS
@echo off
for /f "delims=" %%a in ('wmic OS Get localdatetime  ^| find "."') do set dt=%%a
set date_time=%dt:~0,4%-%dt:~4,2%-%dt:~6,2%_%dt:~8,2%-%dt:~10,2%-%dt:~12,2%
goto :eof


:setfile
set file=%~f1
set filepath=%~dp1
set filename=%~n1
set fileextension=%~x1
goto :eof
