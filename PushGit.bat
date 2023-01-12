@echo off
color 2
set /p Br="Enter Branch Name: "
set CDNLINK=https://cdn.jsdelivr.net/gh/iz2kk/loltheme@%Br%/IZI_Theme.css
set jsLINK=https://cdn.jsdelivr.net/gh/iz2kk/loltheme@%Br%/IZI_Theme_lib.js

git add *
git commit -m  z
git checkout -b "%Br%"
git push izi "%Br%"


color 3
echo "Your CDN Link"
echo %CDNLINK%
echo %jsLINK%
pause.