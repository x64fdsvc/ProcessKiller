rem ///A Simple ProcessKiller Made by @ztlv_, June 2024.///
rem $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
rem ///////////////////////////////////////////////////////

color 0d
mode con:cols=77  lines=40
@Title ProcessKiller - %DATE% - %TIME% 
@ECHO OFF
set ldt=%date% %time%
ECHO %ldt%>> ProcessKillerLogs.txt / Ran ProcessKiller on Chrome.exe
ECHO FINDSTR LOCATING PID's . . .
ECHO [Process Name]               [PID] [Session name]    [Session#]        [MEM]
TASKLIST  |   FINDSTR  chrome.exe   ||  START chrome.exe  
ECHO FINDSTR FINISHED.
@ECHO Kill Process?
@ECHO OFF
PAUSE
setlocal EnableExtensions EnableDelayedExpansion
set /P "UserChoice=Are you sure [Y/N]? "
set "UserChoice=!UserChoice: =!"
if /I not "!UserChoice!" == "Y" endlocal & exit /B
cls
color 0c
taskkill /IM chrome.exe /F 
@ECHO [ProcessKiller] will now terminate
@ECHO OFF
PAUSE 
EXIT /B 

rem $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
rem //////////////////////////////////////////////////
