#SingleInstance 
gActivateScript = 0 
CurrentTime = 0
LastRun = 0
Ads = 1

IniRead, %LastRun%, C:\auto.ini, Do Not Modify, LastRun

FormatTime, CurrentTime,, yyyyMMdd

If %Ads% = 1
{

if %CurrentTime% = %LastRun%

     {

     }

else
    {
Run http://www.google.com.tr/
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

IniWrite, %LastRun%, C:\auto.ini, Do Not Modify, LastRun

{
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
}

~LButton:: 
Goto, DoFiringLoop 
Return 


~^LButton:: 
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