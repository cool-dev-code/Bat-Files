@ECHO OFF
color 0b
:: This batch file details Windows 10, hardware, and networking configuration.
TITLE My System Info
ECHO Please wait... Checking system information.
ECHO.
:: Section 1: Windows information
ECHO =============
ECHO WINDOWS INFO
ECHO =============
ECHO.
systeminfo | findstr /c:"OS Name"
systeminfo | findstr /c:"OS Version"
systeminfo | findstr /c:"System Type"
ECHO.
:: Section 2: Hardware information.
ECHO ==============
ECHO HARDWARE INFO
ECHO ==============
systeminfo | findstr /c:"Total Physical Memory"
wmic cpu get name
wmic diskdrive get name,model,size
wmic path win32_videocontroller get name
wmic path win32_VideoController get CurrentHorizontalResolution,CurrentVerticalResolution
:: Section 3: Networking information.
ECHO =============
ECHO NETWORK INFO
ECHO =============
ipconfig | findstr IPv4
ipconfig | findstr IPv6
START https://google.com
PAUSE