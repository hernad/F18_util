# https://stackoverflow.com/questions/357315/get-list-of-passed-arguments-in-windows-batch-script-bat

set DIRNAME=%~dp0
%DIRNAME%\bin\java %*
