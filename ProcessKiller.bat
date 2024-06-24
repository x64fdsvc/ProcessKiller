rem A Simple ProcessKiller Made by @ztlv_, June 2024.
rem $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
rem //////////////////////////////////////////////////

color 0d
mode con:cols=120 lines=30
@Title ProcessKiller - %DATE% - %TIME% 
@ECHO OFF
set ldt=%date% %time%
ECHO %ldt%>> ProcessKillerLogs.txt / Ran ProcessKiller on Chrome.exe
TASKLIST  |   FINDSTR  chrome.exe   ||  START chrome.exe
@ECHO "Kill > Chrome.exe"
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
rem Replace Image Names(Application Names) before the .exe's to use ProcessKiller on other Applications, Chrome.exe has been set as an example
rem To find your Image Name(Application Name) Run Command Prompt,  tasklist. And use your Applications Image Name
rem Note tasklist Image Names(Application Names) Are Case Sensitive 
rem Launching ProcessKiller will check if your Applications running and try to launch it if not found launched. To disable this seek[START chrome.exe] And remove the code from this batch file(Might break things)
rem (EXTRA)ProcessKillerLogs.txt along your batch logging Time, Dates & Application Names
