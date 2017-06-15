Dim ObjShell :Set ObjShell = CreateObject("Wscript.Shell")

if WScript.Arguments.Count = 0 then
    WScript.Echo "Missing filename"
else
    'WScript.Echo WScript.Arguments(0)
    ObjShell.AppActivate("f18_editor "& WScript.Arguments(0))
end if



