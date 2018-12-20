IniRead, %LastRun%, C:\auto.ini, Do Not Modify, LastRun
MsgBox %lastrun%
FormatTime, LastRun,, yyyyMMdd
IniWrite, %LastRun%, C:\auto.ini, Do Not Modify, LastRun