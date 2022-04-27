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
#+q::
    if not WinExist(Network Connections)
        Run, ncpa.cpl
    WinWaitActive, Network Connections
    Send, ZET
    Send, {AppsKey}
    Sleep, 250 ;adjust as needed
    Send, a ;en&able
    Sleep, 250 ;adjust as needed
    WinWaitActive, Network Connections
    ;Send, !{F4}
    return

; WinShiftQ disable WIRE_HANA network adapter
#q::
    ;Run, %ComSpec% /K netsh interface set interface "WIRE_HANA" enable
    if not WinExist(Network Connections)
        Run, ncpa.cpl
    WinWaitActive, Network Connections
    Send, ZET
    Send, {AppsKey}
    Sleep, 250 ;adjust as needed
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

; [x] Total Commander
#IfWinActive ahk_class TTOTAL_CMD
; WheelUp::SendMessage 0x400+51, 572, 0, , ahk_class ;prev tab
;WheelDown::^d ;favorite
;WheelUp::!Down ;history
;RButton & WheelDown::^Tab
;RButton & WheelUp::^+Tab
MButton::S
WheelDown::!4
;RButton & MButton::^w
;d::SendMessage 0x400+51, 572, 0, , ahk_class ;next tab
^WheelUp::SendMessage 0x400+51, 3006, 0, , ahk_class TTOTAL_CMD ;572=historyList see TOTALCMD.inc for more
^WheelDown::SendMessage 0x400+51, 3005, 0, , ahk_class TTOTAL_CMD ;572=historyList see TOTALCMD.inc for more
#IfWinActive