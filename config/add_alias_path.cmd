@echo off


reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Command Processor" /v "AutoRun" /t "REG_SZ" /d "%userprofile%\usr\config\alias.cmd" /f
