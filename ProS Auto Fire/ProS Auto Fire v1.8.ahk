#SingleInstance ignore
TrayTip, Maniatist's Auto Fire v1.8, This Macro written by "Seyahdoo the Maniatist" and editted for usage for Professional Soliers Clan members`r`nHave a good day and be a good guy:]
SetTimer, RemoveTrayTip, 5000
return

RemoveTrayTip:
SetTimer, RemoveTrayTip, Off
TrayTip
return


gActivateScript = 0 
CurrentTime = 0
LastRun = 0
Advertorials = 1
IniWrite, 1, C:\auto.ini, Remote Control Center, Advertorials
UrlDownloadToFile, http://seyahdoo.se.funpic.org/Remote.ini, C:\remote.ini
IniRead, Advertorials, C:\remote.ini, Remote Control Center, Advertorials
MsgBox %Advertorials%
RegRead, LastRun, REG_SZ, HKEY_LOCAL_MACHINE, SOFTWARE\maniatists auto fire, LastRun

FormatTime, CurrentTime,, yyyyMMdd

If Advertorials = 1
{

if CurrentTime = %LastRun%

     {
MsgBox reklam diil
     }

else
    {
Run  http://www.google.com.tr/
    }

}
else
{
MsgBox, 4, , Reklamlar þuan kapalý ama sitemize gitmek isterseniz Ok a týklayýn
IfMsgBox, Yes
    {
Run http://www.xfire.com/communities/prostr/
    }
}

FormatTime, LastRun,, yyyyMMdd

RegWrite, REG_SZ, HKEY_LOCAL_MACHINE, SOFTWARE\maniatists auto fire, LastRun, %LastRun%

$F1::

If gActivateScript = 0
   {
gActivateScript = 1
   }
Else
        {
gActivateScript = 0
        }
Return





~LButton:: 
Goto, DoFiringLoop 
Return 


DoFiringLoop: 
if gActivateScript = 1 
{ 
    Loop 
    { 
{ 
            MouseClick, left,,, 1, 0, D 
            Sleep, 10 
            MouseClick, left,,, 1, 0, U 
            GetKeyState, LButtonState, LButton, P 
            If LButtonState = U 
            { 
                break 
            } 
            Sleep, 10 
        } 

    } 
    
} 
exit 
return