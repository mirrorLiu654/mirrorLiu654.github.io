@echo off
setlocal enabledelayedexpansion
set num=0
for %%a in (*.weba) do (
set musicName="%%a"
set content="<tr><th><a href="#!num!" onclick="musicPlay^(!num!^)">!musicName:~1,-6!</a><video id="music!num!" src="music/%%a" type="video/webm" controls style="visibility: hidden;width: 0px;height: 0px;"></video></th></tr>"

echo !content:~1,-1!  >>AAAmusicList.txt
set /a num+=1
)

for %%a in (*.mp3,*.m4a,*.wma) do (
set musicName="%%a"
set content="<tr><th><a href="#!num!" onclick="musicPlay^(!num!^)">!musicName:~1,-5!</a><video id="music!num!" src="music/%%a" type="video/webm" controls style="visibility: hidden;width: 0px;height: 0px;"></video></th></tr>"

echo !content:~1,-1!  >>AAAmusicList.txt
set /a num+=1
)


exit

