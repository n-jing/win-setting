@ECHO OFF
:loop
  cls
  nvidia-smi
  timeout /t 1
goto loop
