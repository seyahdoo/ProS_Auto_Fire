#SingleInstance 
gActivateScript = 0 
CurrentTime = 0
LastRun = 0
RegRead, LastRun, REG_SZ, HKEY_LOCAL_MACHINE, SOFTWARE\maniatists auto fire, LastRun

FormatTime, CurrentTime,, yyyyMMdd
{
if %CurrentTime% = %LastRun%

        {

        }

else
        {
Run advertisements.com
        }

}



FormatTime, LastRun,, yyyyMMdd
RegWrite, REG_SZ, HKEY_LOCAL_MACHINE, SOFTWARE\maniatists auto fire, LastRun, %LastRun%


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
exit 

return