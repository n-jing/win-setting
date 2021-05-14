@echo off

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
DOSKEY ckr=cmake --build . --config Release
DOSKEY ckd=cmake --build . --config Debug


DOSKEY reboot=shutdown /r /t 0
DOSKEY cmn=cmake -G "Ninja Multi-Config" ..
