;#Include d:\autohotkey\obsidian.ahk
; [x] Global
Capslock::
 SendInput {Ctrl Down}{Alt Down}{Shift Down}{LWin Down}
 KeyWait, Capslock
 SendInput {Ctrl Up}{Alt Up}{Shift Up}{LWin Up}
 if (A_PriorKey = "Capslock") {
     SendInput {Esc}
 }
return

; winQ enable WIRE_HANA network adapterQ
#q::
    if not WinExist(Network Connections)
        Run, ncpa.cpl
    WinWaitActive, Network Connections
    Send, WIR
    Send, {AppsKey}
    Sleep, 250 ;adjust as needed
    Send, {Down}
    Send, a ;en&able
    Sleep, 250 ;adjust as needed
    WinWaitActive, Network Connections
    Send, !{F4}
    return

; WinShiftQ disable WIRE_HANA network adapter
#+q::
    ;Run, %ComSpec% /K netsh interface set interface "WIRE_HANA" enable
    if not WinExist(Network Connections)
        Run, ncpa.cpl
    WinWaitActive, Network Connections
    Send, WIR
    Send, {AppsKey}
    Sleep, 250 ;adjust as needed
    Send, {Down}
    Send, b ;disa&ble
    Sleep, 500 ;adjust as needed
    Send, !{F4}
    return

; [x] Obsidian
#IfWinActive ahk_exe Obsidian.exe
;alt+d is timestamp
!d::
 FormatTime, dt,, yyyy-MM-dd hh:mm:ss
 SendInput, %dt%{Space}
 return
#IfWinActive

; [x] outlook
#IfWinActive ahk_exe OUTLOOK.exe
::wbr::
(
With Best Regards,
Gampol_T (ext# 495)
)
#IfWinActive