RegRead, lastrun, REG_SZ, HKEY_LOCAL_MACHINE, SOFTWARE\maniatists auto fire, lastrun
MsgBox %lastrun%
FormatTime, LastRun,, ShortDate
RegWrite, REG_SZ, HKEY_LOCAL_MACHINE, SOFTWARE\maniatists auto fire, LastRun, %LastRun%
RegWrite, REG_SZ, HKEY_LOCAL_MACHINE, SOFTWARE\maniatists auto fire, Advertisements, 1