REM 008 VERZIJA
REM https://stackoverflow.com/questions/1645843/resolve-absolute-path-from-relative-path-and-or-file-name
REM %~dp0 is "C:\temp\"
set PATH0=%PATH%
set THISDIR=%~dp0
set PATH=%THISDIR%\program;c:\windows\system32
set FILE=%1

if not exist "%APPDATA%\LO\4" (
  mkdir "%APPDATA%\LO"
  mkdir "%APPDATA%\LO\4"
  xcopy /s "%THISDIR%\APPDATA\*.*" "%APPDATA%\LO\4\"
)

start /MAX %THISDIR%\program\soffice.exe --norestore --nologo %FILE%

set PATH=%PATH0%
