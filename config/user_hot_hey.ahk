; remap alt+q to close window
!q::
Send !{F4}
return

; remap ctrl+alt+t to open cmder
!^t::
Run D:\software\cmder\Cmder.exe
return

; RAlt::RWin

; ; remap win+c to control panel
; #c::
; Run C:\Windows\System32\control.exe
; return

; remap ctrl+shift+space to mouse right click
^+Space::
Send {RButton}
return

; remap ctrl+alt+space to mouse left click
^!Space::
Send {LButton}
return

; remap ctrl+alt+e to run everything
!^e::
Run D:\software\Everything\Everything.exe
return


; remap ctrl+alt+f to run files
!^f::
Run C:\Users\admin\AppData\Local\Microsoft\WindowsApps\files.exe
return

; ; remap ctrl+alt+i to open enviroment
; ^!i::
; Send, #r
; Sleep 100
; SendRaw, powershell -command "&{start-process rundll32.exe sysdm.cpl,EditEnvironmentVariables -verb RunAs}
; return


; remap ctrl+alt+s to open system attribute
^!s::
Run control sysdm.cpl
return

; remap ctrl+alt+m to open emacs
^!m::
Run C:\Program Files\Emacs\x86_64\bin\runemacs.exe
return

; open local notes when //n enter
:://n::
Run, http://localhost:4001/Notes/archives/
return
