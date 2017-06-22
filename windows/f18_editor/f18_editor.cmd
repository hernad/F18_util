REM 008 VERZIJA
REM https://stackoverflow.com/questions/1645843/resolve-absolute-path-from-relative-path-and-or-file-name
REM %~dp0 is "C:\temp\"
set PATH0=%PATH%
set THISDIR=%~dp0
set PATH=%THISDIR%;c:\windows\system32

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


if exist "%FN%.conv.txt" del /Q  "%FN%.conv.txt"

iconv -f CP852 -t UTF-8 "%FN%" | sed -e "s/#\S\{1\}[0-9A-Z_]\{5\}#//g" > "%FN%.conv.txt"

if not exist "%WINDIR%\fonts\sctah.ttf" (
  wscript "%THISDIR%\fonts_install.vbs" "%THISDIR%"
  FontReg.exe
)

start /MAX f18_gvim.exe -u "%THISDIR%\my_vimrc" -c "nmap <C-P> :exe '!start cmd /c ptxt.cmd \"' . substitute(@%%, '.conv.txt', '', 'y') . '\" /p'<CR>" "%FN%.conv.txt" 

start focus.vbs "%FN%.conv.txt"

set PATH=%PATH0%
