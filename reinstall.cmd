@echo off
runas /user:abc cmd

cd /d c:
md LocalProgram
cd /d %userprofile%
md user\shell
md user\config
md user\local
md user\shortcut

cd /d %userprofile%\Downloads
md software application library
powershell -inputformat none -outputformat none -NonInteractive -Command Add-MpPreference -ExclusionPath $ENV:USERPROFILE\Downloads

