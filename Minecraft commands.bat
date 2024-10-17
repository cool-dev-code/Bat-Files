@echo off

:menu
cls
echo     _______________________________________
echo    ^|                                      ^|
echo    ^|    Minecraft commands ShujaPlays     ^|
echo    ^|                                      ^|
echo    ^|      [1] Give Command                ^|
echo    ^|      [2] Fill upto player cordinates ^|
echo    ^|      [3] Advance Fill                ^|
echo    ^|      [4] Subscribe my Channel        ^|
echo    ^       [5] Exit                        ^|
echo    ^|                                      ^|
echo    ^|______________________________________^|
echo.
echo.

set /p choice=Enter your choice 1,2 or 3: 

if "%choice%"=="1" goto give
if "%choice%"=="2" goto fill
if "%choice%"=="3" goto fill_advance
if "%choice%"=="4" goto subscribe
if "%choice%"=="5" goto exit_program

echo.
echo Invalid choice. Please try again.
pause
goto menu

:give

cls
REM input the item
set /p item=Enter the item name: 
REM input the quantity
set /p quantity=Enter the quantity: 
REM Generate the give command
set giveCommand=/give @p %item% %quantity%
REM Copy the command to clipboard
echo %giveCommand% | clip
echo. 
REM Display command
echo Your command is "%giveCommand%"
echo.
REM Display a message
echo Successfully copied to clipboard.
pause
goto menu

:fill
cls

REM Prompt the user to input the coordinates and block type
set /p from= Enter starting coordinates (X Y Z): 
set /p block= Enter the block type: 


REM Generate the fill command
set fillCommand=/fill %from% ~ ~ ~ %block%
REM Copy the command to clipboard
echo %fillCommand% | clip
echo.
REM Display a message
echo Your command is "%fillCommand%"
echo.
echo Successfully copied to clipboard.
echo.

pause
goto menu

:fill_advance
cls
REM Prompt the user to input the coordinates and block type
set /p from= Enter starting coordinates (X Y Z) : 
set /p newBlock= Enter the new block type : 
set /p oldBlock= Enter the old block type : 
rem set /p extra=Extra arguments like [replace:keep:outline:hollow:destroy] :
set /p extra= Extra arguments like [replace:keep:outline:hollow:destroy] : 

REM Generate the fill command
set advancefillCommand=/fill %from% ~ ~ ~ %newBlock% %extra% %oldBlock% 
REM Copy the command to clipboard
echo %advancefillCommand% | clip
echo.
REM Display a message
echo Your command is "%advancefillCommand%"
echo.
echo Successfully copied to clipboard.
echo.

pause
goto menu

:subscribe
start "Subscribe" "https://www.youtube.com/@ShujaPlays?sub_confirmation=1"
goto menu

:exit_program
exit
