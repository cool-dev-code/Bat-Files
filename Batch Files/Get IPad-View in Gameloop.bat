@echo off

:menu
cls
echo     _______________________________________
echo    ^|                                      ^|
echo    ^|      iPad view by Shuja Plays        ^|
echo    ^|                                      ^|
echo    ^|         (1) Change Resolution        ^|
echo    ^|         (2) Remove Render Quality    ^|
echo    ^|         (3) Subscribe my Channel     ^|
echo    ^|         (4) Exit                     ^|
echo    ^|                                      ^|
echo    ^|______________________________________^|
echo.
echo.

set /p choice=Enter your choice 1,2 or 3: 

if "%choice%"=="1" goto download_replace
if "%choice%"=="2" goto delete_file
if "%choice%"=="3" goto subscribe
if "%choice%"=="4" goto exit_program

echo.
echo Invalid choice. Please try again.
pause
goto menu

:download_replace
cls
rem echo Do you want to Get iPad-view? (y for Yes) / (n for No)

tasklist | find /i "AndroidEmulatorEx.exe" > nul

if %errorlevel% equ 0 (
	echo.
    echo  Gameloop is running. Please Close and try again.
	echo.
	pause
	goto menu
) else (
    goto download_replace_continue
)
:download_replace_continue
cls
echo.
echo Downloading Latest Keymapping file...
echo.
curl -o "%APPDATA%\AndroidTbox\TVM_100.xml" "https://raw.githubusercontent.com/cool-dev-code/Gameloop-iPad-view-Keymapping/main/TVM_100.xml"
echo.
echo  iPad view applied successfully.
echo.
echo   ______________________________________
echo  ^|      Subscribe to SHUJA PLAYS       ^|
echo  ^|_____________________________________^|
pause
start "Subscribe" "https://www.youtube.com/@ShujaPlays?sub_confirmation=1"
goto menu

:delete_file
cls
tasklist | find /i "AndroidEmulatorEx.exe" > nul

if %errorlevel% equ 0 (
	echo.
    echo  Gameloop is running. Please Close and try again.
	echo.
	pause
	goto menu
) else (
    goto delete_file_continue
)
:delete_file_continue
echo.
setlocal

set "localFile=%APPDATA%\AndroidTbox\TVM_100.xml"

if exist "%localFile%" (
    del "%localFile%"
    echo.
	echo  Keymapping file removed successfully.
	echo.
) else (
    echo  Keymapping file not found.
	echo.
)

pause
goto menu

:subscribe
start "Subscribe" "https://www.youtube.com/@ShujaPlays?sub_confirmation=1"
goto menu

:exit_program
exit
