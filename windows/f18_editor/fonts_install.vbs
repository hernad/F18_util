Option Explicit
Dim objShell, objFSO, wshShell
Dim strFontSourcePath,objFolder, objFont, objNameSpace, objFile
Set objShell = CreateObject("Shell.Application")
Set wshShell = CreateObject("WScript.Shell")
Set objFSO = createobject("Scripting.Filesystemobject")

strFontSourcePath = WScript.Arguments(0)

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
