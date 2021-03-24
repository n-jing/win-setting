@echo off

reg add "HKEY_LOCAL_MACHINE\SOFTWARE\GNU\Emacs" /v "HOME" /t "REG_SZ" /d "%userprofile%" /f
