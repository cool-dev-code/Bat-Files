@ECHO OFF
TITLE Ping Test from Router
color 0b
set /p website=Which website you do want to ping: 
ping %website% -t