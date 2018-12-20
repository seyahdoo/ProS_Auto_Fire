TrayTip, Maniatist's Auto Fire v1.9, This Macro written by "Seyahdoo the Maniatist" and editted for usage for Professional Soliers Clan members`r`nHave a good day and be a good guy:]
sleep, 5000
gActivateScript = 0 
CurrentTime = 0
LastRun = 0
Advertorials = 1
InternetTest = 0




UrlDownloadToFile,http://seyahdoo.se.funpic.org/InternetTest.txt, C:\Program Files\Maniatists Auto Fire\settings\InternetTest.txt
FileRead, InternetTest, C:\Program Files\Maniatists Auto Fire\settings\InternetTest.txt
If InternetTest = 1
{
TrayTip, Internet Connection Detected... 
sleep, 5000
}
else
{
MsgBox You must have internet connection for use this script`r`nSorry but you can't use the script`r`nIf you wanna use this application without internet talk with me... `r`nmy Xfire : seyahdoo
Exit
}
sleep, 5000


RegRead, LastRun, REG_SZ, HKEY_LOCAL_MACHINE, SOFTWARE\maniatists auto fire, LastRun

FormatTime, CurrentTime,, yyyyMMdd

If Advertorials = 1
{

if CurrentTime = %LastRun%

     {
MsgBox not an advert
     }

else
    {
MsgBox An advert
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
return

WinMinimizeAll

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