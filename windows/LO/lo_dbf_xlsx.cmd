REM 006 VERZIJA

REM https://stackoverflow.com/questions/1645843/resolve-absolute-path-from-relative-path-and-or-file-name
REM %~dp0 is "C:\temp\"
set PATH0=%PATH%
set THISDIR=%~dp0
set PATH=%THISDIR%\program;c:\windows\system32

set FILE=%1
set OUTDIR=%2


%THISDIR%\program\soffice.exe --nologo ^
    --convert-to xlsx:"Calc MS Excel 2007 XML" ^
    --infilter=dBase:25 ^
    --outdir %OUTDIR% ^
    %FILE%

