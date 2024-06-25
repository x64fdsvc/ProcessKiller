color 0d
mode con:cols=77  lines=30
@Title ProcessKiller - %DATE% - %TIME% 
@ECHO OFF
set ldt=%date% %time%
@ECHO %ldt%>> ProcessKillerLogs.txt / Ran ProcessKiller on Discord.exe
@ECHO [FINDSTR] Running tasklist . . .
@ECHO [Process Name]               [PID] [Session name]    [Session#]        [MEM]
TASKLIST  |   FINDSTR /I  discord.exe   ||  START /I discord.exe  
ECHO [FINDSTR] Finished.
@ECHO Run taskkill?
@ECHO OFF
PAUSE
setlocal EnableExtensions EnableDelayedExpansion
set /P "UserChoice=Are you sure [Y/N]? "
set "UserChoice=!UserChoice: =!"
if /I not "!UserChoice!" == "Y" endlocal & exit /B
cls
color 0c
taskkill /IM discord.exe /F 
@ECHO [ProcessKiller] Will now terminate
@ECHO OFF
PAUSE 
EXIT /B 
