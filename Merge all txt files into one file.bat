@echo off
:: Change directory to where the .txt files are located
cd /d "C:\Users\Admin\Downloads\logs"

:: Combine all .txt files into one file
copy *.log combined_logs.log

:: Notify the user that the task is complete
echo All .log files combined into combined_logs.log in source directory
pause
