;Re Editted by Seyahdoo The Maniatist DO NOT SHARE!!!

MsgBox Bu Makro Seyahdoo the Maniatist Tarafindan yazilip Professional soliders klani uyelerinin kullanimi icin editlenmistir`r`nKlan uyeri disinda paylasimi yasak olup tum haklari saklidir`r`nMakroyu baslatmak icin insert tusuna(deletinin ustundedir kendileri) basmaniz yeterlidir`r`nBunun disinda hicbirsey yapmaniza gerek yoktur`r`nartik tekli silahinizi taramali gibi kullanabilirsiniz`r`nIYI OYUNLAR!!!             HAYIRLI GUNLER!!!

Run http://www.xfire.com/communities/prostr/

#SingleInstance 
gActivateScript = 0 

; Insert to activate the macro 
~Insert:: 
KeyWait, Insert 
GetKeyState, InsertState, Insert, T 
If InsertState = D 
{ 
    gActivateScript = 1 

} 
else 
{ 
    gActivateScript = 0 

} 
return 

; CTRL + SHIFT + LBUTTON to activate the macro 
~+^LButton:: 
If gActivateScript = 0 
{ 
    gActivateScript = 1 

} 
else 
{ 
    gActivateScript = 0 

} 
return 

;Also applies to burst weapons. ie click and hold will perform like a full auto firing mode 
~LButton:: 
Goto, DoFiringLoop 
Return 

;When crouching and firing at the same time. Using Ctrl as crouch button 
~^LButton:: 
Goto, DoFiringLoop 
Return 

DoFiringLoop: 
if gActivateScript = 1 
{ 
    Loop 
    { 
       ;Make sure Cod4 window is the active window. Don't want weird mouse behaviour appearing at other window 
{ 
            MouseClick, left,,, 1, 0, D 
           ;delay between simu. mouse btn down and up 
            Sleep, 22 
            MouseClick, left,,, 1, 0, U 
            GetKeyState, LButtonState, LButton, P 
            If LButtonState = U 
            { 
               ;break the loop if physical state of mouse btn is up. 
                break 
            } 
           ;delay between each simu. click events 
            Sleep, 50 
        } 

    } 
    
} 
exit 

return