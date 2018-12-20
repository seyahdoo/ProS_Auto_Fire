#SingleInstance 
gActivateScript = 0 
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




;Also applies to burst weapons. ie click and hold will perform like a full auto firing mode 
~LButton:: 
Goto, DoFiringLoop 
Return 

;When crouching and firing at the same time. Using Ctrl as crouch button 
~^LButton:: 
Goto, DoFiringLoop 
Return 

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
