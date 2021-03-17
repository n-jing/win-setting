@echo off
START "trojan" /B "%userprofile%\Downloads\software\trojan\trojan.exe" "%userprofile%\Downloads\software\trojan\config.json"
START "ahk_c" /B "C:\Program Files\AutoHotkey\AutoHotkey.exe" "%userprofile%\usr\config\user_hot_hey.ahk"
START "monitor" /B "%userprofile%\Downloads\software\TrafficMonitor_V1.79.1_x86\TrafficMonitor\TrafficMonitor.exe"
START "notes" /B "%userprofile%\AppData\Roaming\npm\hexo.cmd" --cwd=%userprofile%\Workspace\Notes s -p 4001
START "devlog" /B "%userprofile%\AppData\Roaming\npm\hexo.cmd" --cwd=%userprofile%\Workspace\Devlog s -p 4002
START "daka" /B "%userprofile%\AppData\Local\Programs\Python\Python37\python.exe" %userprofile%\Workspace\Project\ZJU-nCov-Hitcarder\daka.py
