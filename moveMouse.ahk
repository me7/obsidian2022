;#w:: Run, d:\obsidian2022\moveMouse.ahk
gosub fakework
send ^#c ; set 'color filters' to make win+ctrl+c to invert color
SetTimer, fakework, 60000 ;every 10 second

#s::
settimer, fakework, off
send ^#c ; set 'color filters' to make win+ctrl+c to invert color
return

fakework:
Loop, 4
{
    Random, X, 1, 1000
    Random, Y, 1, 1000
    MouseMove, X, Y, 50
    ;msgbox X = %X%, Y = %Y%
}
send !{Tab}
return