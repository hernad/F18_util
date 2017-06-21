REM 003 VERZIJA

REM https://stackoverflow.com/questions/1645843/resolve-absolute-path-from-relative-path-and-or-file-name
REM %~dp0 is "C:\temp\"
set PATH0=%PATH%
set THISDIR=%~dp0
set PATH=%THISDIR%\program;c:\windows\system32


set FN=%1

if "%2"==""  goto :full
set FN=%FN% %2

if "%3"==""  goto :full
set FN=%FN% %3


if "%4"==""  goto :full
set FN=%FN% %4

if "%5"==""  goto :full
set FN=%FN% %5

if "%6"==""  goto :full
set FN=%FN% %6

:full


if not exist "%APPDATA%\LO\4" (
  mkdir "%APPDATA%\LO"
  mkdir "%APPDATA%\LO\4"
  xcopy /s "%THISDIR%\APPDATA\*.*" "%APPDATA%\LO\4\"
)

if not exist "%WINDIR%\system32\msvcr120.dll" (
  "%THISDIR%\SYSTEM\vcredist_x86.exe" /install /passive /norestart
)

start /MAX %THISDIR%\program\soffice.exe --nologo "%FN%"

REM start focus.vbs "%FN%.conv.txt"

set PATH=%PATH0%
