https://ourtechroom.com/tech/junction-vs-symbolic-links/
- mklink /JHD destination source
- /j junction = folder only, not file, not network e.g. c:/dirA to c:/dirB
- /h hard = file only, same drive only e.g. c:/fileA to c:/fileB
- /d symbolic = both file and folder, remote ok e.g. //srv/dir to c:/dir/
