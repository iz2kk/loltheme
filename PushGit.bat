@echo off
:gitAgain
copy /y "D:\Game\league-loader-0.3b\league-loader-0.3b\IZI_Theme_lib.js" "D:\Game\league-loader-0.3b\league-loader-0.3b\plugins\IZI_Theme_lib.js"


set /p Br="Enter Branch Name: "
set CDNLINK=https://cdn.jsdelivr.net/gh/iz2kk/loltheme@%Br%/IZI_Theme.css
set jsLINK=https://cdn.jsdelivr.net/gh/iz2kk/loltheme@%Br%/IZI_Theme_lib.js

git add *
git commit -m  z
git checkout -b "%Br%"
git push izi "%Br%"

del "D:\Game\league-loader-0.3b\league-loader-0.3b\plugins\IZI_Theme_lib.js" /S /Q /F

echo "Your CDN Link"
echo %CDNLINK%
echo %jsLINK%
pause.
cls
goto gitAgain