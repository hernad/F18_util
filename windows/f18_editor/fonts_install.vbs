Dim objShell, objFSO, wshShell
Dim strFontSourcePath,objFolder, objFont, objNameSpace, objFile
Set objShell = CreateObject("Shell.Application")
Set wshShell = CreateObject("WScript.Shell")
Set objFSO = createobject("Scripting.Filesystemobject")

strComputer = "."
Set objWMIService = GetObject("winmgmts:\\" & strComputer & "\root\cimv2")        
Set colOperatingSystem = objWMIService.ExecQuery("Select * from Win32_OperatingSystem")

For Each objOperatingSystem in colOperatingSystem
  ServicePack = objOperatingSystem.ServicePackMajorVersion
  Version = objOperatingSystem.Version
Next

strFontSourcePath = WScript.Arguments(0)

If Mid(Version,1,3)="5.1" Then
  WScript.Echo "Windows XP"
  Set objFolder = objFSO.getFolder(strFontSourcePath)
  For Each objFile In objFolder.files
    If LCase(right(objFile,4)) = ".ttf" OR LCase(right(objFile,4)) = ".otf" Then
      objFSO.CopyFile strFontSourcePath & objFile.Name  , "C:\Windows\Fonts\"
      Wscript.Echo "WXP: Font " & objFile.Name & " copied to Windows fonts dir"
    End If
  Next
  Wscript.Quit 0
End If 

' objFont.InvokeVerb radi samo na >= Windows 7
If objFSO.FolderExists(strFontSourcePath) Then
 Set objNameSpace = objShell.Namespace(strFontSourcePath)
 Set objFolder = objFSO.getFolder(strFontSourcePath)
 For Each objFile In objFolder.files
  If LCase(right(objFile,4)) = ".ttf" OR LCase(right(objFile,4)) = ".otf" Then
    If objFSO.FileExists("C:\Windows\Fonts\" & objFile.Name) Then
      Wscript.Echo "Font already installed: " & objFile.Name
    Else
      Set objFont = objNameSpace.ParseName(objFile.Name)
      objFont.InvokeVerb("Install")
      Wscript.Echo "Installed Font: " & objFile.Name
      Set objFont = Nothing
    End If
  End If
 Next
Else
End If
