PgUp::
    if (Toggle := !Toggle)
    {
        SetTimer, SpamKeys, 100 ; Adjust the delay (in milliseconds) between each key press
    }
    else
    {
        SetTimer, SpamKeys, Off
    }
    return

    PgDn:: ; Emergency exit button (Numpad 0)
    ExitApp
    return

SpamKeys:
    Loop
    {
        Sleep, 10 ; Wait for 3000 milliseconds, which is equivalent to 3 seconds
        Loop 5
        {
            Send, {Enter}
            Sleep, 10 ; Adjust the delay (in milliseconds) between each Enter key press
        }
        Sleep 3500
        Send, {Enter}
        Loop 10
        {
            Send, {Down}
            Sleep, 10 ; Adjust the delay (in milliseconds) between each Down arrow press
        }
        
        Send, {Enter}
        Sleep, 1000 ; Adjust the delay (in milliseconds) between Enter key press
        
        Loop 10
        {
            Send, {Down}
            Sleep, 10 ; Adjust the delay (in milliseconds) between each Down arrow press
        }   
            Send, {Enter}
            Sleep, 1000 ; Adjust the delay (in milliseconds) between Enter key press
            
            Loop 10
                {
                    Send, {Down}
                    Sleep, 10 ; Adjust the delay (in milliseconds) between each Down arrow press
                }
                
                Send, {Enter}
                Sleep, 10 ; Adjust the delay (in milliseconds) between Enter key press
        


    }
    
    return



