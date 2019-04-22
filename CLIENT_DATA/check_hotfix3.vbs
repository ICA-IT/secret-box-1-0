strComputer = "."
Set objWMIService = GetObject("winmgmts:" _
& "{impersonationLevel=impersonate}!\\" & strComputer & "\root\cimv2")

Set colQuickFixes = objWMIService.ExecQuery _
("Select * from Win32_QuickFixEngineering")

For Each objQuickFix in colQuickFixes
REM If InStr(1,objQuickFix.HotFixID,"KB954155",1) Then
If InStr(1,objQuickFix.HotFixID,"KB917607",1) Then
wscript.Echo "KB917607 found"
WScript.Quit 1
End If
Next
wscript.Echo "KB917607 not found"
WScript.Quit 0
