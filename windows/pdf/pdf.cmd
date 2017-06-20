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


REM if not exist "%APPDATA%\SumatraPDF" (
REM   mkdir "%APPDATA%\SumatraPDF"
REM  xcopy /s "%THISDIR%\APPDATA\*.*" "%APPDATA%\SumatraPDF\"
REM )

start /MAX %THISDIR%\SumatraPDF.exe "%FN%"

REM start focus.vbs "%FN%.conv.txt"

set PATH=%PATH0%
