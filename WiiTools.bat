@echo off
title WiiTools!
echo WiiTools!
echo Welcome to the WiiTools Program! Using this you can download multiple tools such as: RiiConnect24 and WiiLink24! More will be added soon.
:choosingmain
echo Start by choosing an option below:
echo 1: RiiConnect24 Patcher
echo 2: WiiLink24 Patcher
echo 3: How to mod a Wii (wii.guide)
echo 4: Exit
echo 5: Disclaimer
echo 6: Options
set /p menu="What do you want to choose? Enter here: "
if %menu%==1 goto rc24
if %menu%==2 goto wl24
if %menu%==3 goto hackingguide
if %menu%==4 goto exit
if %menu%==5 goto disclaimer
if %menu%==6 goto options
:rc24
cls
echo Okay, The specified criteria is now downloading.
powershell -c wget -o C:\rc24patcher.bat https://github.com/RiiConnect24/RiiConnect24-Patcher/releases/download/v1.4.2.1-v1.1.2/RiiConnect24Patcher.bat
echo Right, Now moving to specified file to the Public Desktop folder. (Find this in another folder on the desktop)
mkdir c:\users\public\desktop\RiiConnect24Patcher
move c:\rc24patcher.bat c:\users\public\desktop\RiiConnect24Patcher\
echo Done that, Now opening the folder that the Patcher is in.
explorer.exe c:\users\public\desktop\RiiConnect24Patcher
echo Done. The file is now downloaded and ready to go.
pause
cls
goto choosingmain
:wl24
cls
echo Okay, The specified criteria is now downloading.
powershell -c wget -o C:\wl24patcher.bat https://github.com/WiiLink24/WiiLink24-Patcher/releases/download/v1.0.5/WiiLink24Patcher.bat
echo Right, Now moving to specified file to the Public Desktop folder. (Find this in another folder on the desktop)
mkdir c:\users\public\desktop\WiiLink24Patcher
move c:\wl24patcher.bat c:\users\public\desktop\WiiLink24Patcher\
echo Done that, Now opening the folder that the Patcher is in.
explorer.exe c:\users\public\desktop\WiiLink24Patcher
echo Done. The file is now downloaded and ready to go.
pause
cls
goto choosingmain
:hackingguide
explorer.exe https://wii.guide
:exit
exit
:disclaimer
cls
echo I am in NO WAY affiliated with RiiConnect24, WiiLink24, and others.
pause
cls
goto choosingmain
:options
echo ?: Secret...
echo b: back
echo r: readme
set /p menu="selector.secret.file.choose: "
if %menu%==? goto spin
if %menu%==b goto choosingmain
if %menu%==r goto readme
:spin
echo / spin forever!!!!!11!!
cls
echo | spin forever!!!!!11!!
cls
echo \ spin forever!!!!!11!!
cls
echo - spin forever!!!!!11!!
cls
goto spin
:readme
notepad.exe README.txt
goto choosingmain