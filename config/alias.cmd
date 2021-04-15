@echo off

:: Add to path by command

DOSKEY add_python26=set PATH=%PATH%;"C:\Python26\"
DOSKEY add_python33=set PATH=%PATH%;"C:\Python33\"

:: Commands

rem git shortcut
DOSKEY gt=git status
rem DOSKEY gl=git log --pretty=format:"%h - %an, %ar : %s"

DOSKEY lld=ls -alt
DOSKEY cdu=cd /d %userprofile%
DOSKEY cdt=cd /d E:\tmp
DOSKEY cdn=cd /d D:\Notes
DOSKEY cdp=cd /d D:\workspace\project
DOSKEY e.=explorer .
DOSKEY clear=cls


DOSKEY vs=devenv $*
DOSKEY cr=cmake --build . --config Release
