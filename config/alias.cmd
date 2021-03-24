@echo off

rem :: Temporary system path at cmd startup

rem set PATH=%PATH%;"C:\Program Files\Sublime Text 2\"

rem :: Add to path by command

rem DOSKEY add_python26=set PATH=%PATH%;"C:\Python26\"
rem DOSKEY add_python33=set PATH=%PATH%;"C:\Python33\"

rem :: Commands

rem DOSKEY ls=dir /B
rem DOSKEY sublime=sublime_text $*  
rem     ::sublime_text.exe is name of the executable. By adding a temporary entry to system path, we don't have to write the whole directory anymore.
rem DOSKEY gsp="C:\Program Files (x86)\Sketchpad5\GSP505en.exe"
rem DOSKEY alias=notepad %USERPROFILE%\Dropbox\alias.cmd

rem :: Common directories

rem DOSKEY dropbox=cd "%USERPROFILE%\Dropbox\$*"
rem DOSKEY research=cd %USERPROFILE%\Dropbox\Research\
