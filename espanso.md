# Text Expander

https://espanso.org/docs/install/win/

# V2
- portable version https://github.com/federico-terzi/espanso/releases
- docs https://espanso.org/docs/next/matches/organizing-matches/
- 
 

config file =  file://c:/Users/ball/AppData/Roaming/espanso/default.yml
:date become 03/04/2022

can config per application e.g. Telegram.yml using filter_title:
https://espanso.org/docs/configuration/

- press alt alt to disable / enable
- press backspace to cancel text expansion
- cursor place at `$|$`
- use image_path: to replace text with image
- var: type: clipboard to use {{clipboard}} content
- sample config
```yml
matches:

 # video tag html 5

 - trigger: ":vid"

 replace: "<video type='video/mp4' controls src=file://d:/v/$|$.mp4#t=0></video>"

  

 # with best regards

 - trigger: ":wbr"

 replace: "Dear $|$\n\nWith Best Regards\nGampol T."
 ``` 
