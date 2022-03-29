## Recipe
script is autohotkey.ahk

http://dsss.be/w/autohotkey_recipes
https://windowsloop.com/best-autohotkey-scripts/

## syntax
```ahk
; is comment, #Win ^Ctrl !Alt +Shift
ifWinActive

```

### obsidian timestamp on alt + d
```
#IfWinActive ahk_exe Obsidian.exe

{

!d::

 FormatTime, dt,, yyyy-MM-dd hh:mm:ss

 SendInput, %dt%{Space}

 return 

}
```

### use capslock as hyper key
```
Capslock::

 SendInput {Ctrl Down}{Alt Down}{Shift Down}{LWin Down}

 KeyWait, Capslock

 SendInput {Ctrl Up}{Alt Up}{Shift Up}{LWin Up}

 if (A_PriorKey = "Capslock") {

 SendInput {Esc}

 }

return
```
