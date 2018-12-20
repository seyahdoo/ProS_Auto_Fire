

;Re Editted by Seyahdoo The Maniatist DO NOT SHARE!!!
MsgBox, 4, , English(Yes) or Turkish(No)

IfMsgBox, Yes
{
MsgBox, 4, , This Macro written by "Seyahdoo the Maniatist" and editted for usage for Professional Soliers Clan members`r`nFor start the macro simply press F1 button upper the keyboard`r`nNow you can use your m14 like a machine gun :]`r`nManiatist's Auto Fire Macro v1.1`r`nDo you want to go to [ProS]Clan website???
IfMsgBox, Yes
   {
Msgbox You are redirecting...
Run http://www.xfire.com/communities/prostr/
    }
MsgBox Have a good day and be a good guy:]
}
Else
{
MsgBox, 4, , Bu Makro "Seyahdoo the Maniatist" Tarafindan yazilip Professional soliders klani uyelerinin kullanimi icin editlenmistir`r`nMakroyu baslatmak icin F1 tusuna basmaniz yeterlidir`r`nArtik m14'unuzu taramali silah gibi kullanabilirsiniz`r`nManiatist's Auto Fire Macro v1.1`r`n[ProS]Klan sayfasina gitmek istermisiniz??? 
IfMsgBox, Yes
   {
MsgBox Yonlendiriyiyorsunuz...
Run http://www.xfire.com/communities/prostr/

   }
MsgBox HAYIRLI GUNLER...HAYIRLI OYUNLAR...
}

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