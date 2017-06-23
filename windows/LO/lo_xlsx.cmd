REM 005 VERZIJA

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


%THISDIR%\program\soffice.exe --nologo soffice --convert-to xlsx:"Calc MS Excel 2007 XML" "%FN%"
