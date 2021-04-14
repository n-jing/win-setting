@echo off

START "ahk_c" /B "C:\Program Files\AutoHotkey\AutoHotkey.exe" "D:\win-setting\config\user_hot_hey.ahk"
START "monitor" /B "D:\tools\software\TrafficMonitor_V1.79.1_x86\TrafficMonitor\TrafficMonitor.exe"
START "notes" /B "%userprofile%\AppData\Roaming\npm\hexo.cmd" --cwd=D:\Notes s -p 4001
START "devlog" /B "%userprofile%\AppData\Roaming\npm\hexo.cmd" --cwd=D:\Devlog s -p 4002
