disable / enable office key (Win + Ctrl + Alt + Shift)
```
put this command in power shell
REG ADD HKCU\Software\Classes\ms-officeapp\Shell\Open\Command /t REG_SZ /d rundll32
REG DELETE HKCU\Software\Classes\ms-officeapp\Shell\Open\Command /t REG_SZ /d rundll32
```

office + W = word
office + X = excel
office + o = outlook

>[!qquote]
>This is info callout
>Good

