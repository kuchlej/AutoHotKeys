^!a::
    {
        if WinExist("Autotask - CMIT")
        {
            WinActivate
        } 
        else if WinExist("Autotask")
        {
            WinActivate
        }
        else
        {
            PopUpError("Couldn't Activate Autotask Window")
        }
    }


^!c::
    {
        if WinExist("Calculator")
        {
            WinActivate
        }
        else
        {
            Run "calc"
        }
    }

^!f::
    {
        if WinExist("Firefox")
        {
            WinActivate
        }
        else
        {
            Run "C:\Program Files\Mozilla Firefox\firefox.exe"
        }
    }

^!l::
    {
        if WinExist("LiveChat")
        {
            WinActivate
        }
        else 
        {
            Run "C:\Program Files\Google\Chrome\Application\chrome.exe https://my.livechatinc.com/home -new-window -window-name=LiveChat"
        }
    }

^!m::
    {
        if WinExist("Tech Meeting")
        {
            WinActivate
        }
        else if WinExist("Microsoft Teams")
        {
            WinActivate
        }
        else
        {
            Run "ms-teams.exe"
        }
    }

^!n::
    { 
        if WinExist("Remote Notes (Pending) - OneNote")
        {
            WinActivate
        }
        else if WinExist("Field Notes - OneNote")
        {
            WinActivate
        }
        else if WinExist("OneNote")
        {
            WinActivate
        }
        else
        {
            Run "ONENOTE.EXE"
        }
    } 

^!o::
    {
        if WinExist("Outlook")
        {
            WinActivate
        } else {
            Run "Outlook.exe"
        }
    }    

^!r::
    {
        if WinExist("Remote!")
        {
            WinActivate
        }
        else 
        {
            Run "C:\Program Files\Google\Chrome\Application\chrome.exe -window-name='Remote!'"
        }
    }

^!s::
    {
        Send "SonicWALL"
    }

^!t::
    {
        TimeString := FormatTime( , "MM-dd-yyyy-hh:mm:sstt")
        Send TimeString
    }

^!w::
    {
        Send "WiFi"
    }

#+c::
    {
        A_Clipboard:=""
        Send "^c"
        ClipWait
        if WinExist("Allworx Interact") 
        {
            WinActivate
            Send "^v{enter}"
        }
        else 
        {
            PopUpError("No Allworx Interact Window to Activate")
        }
    }


    PopUpError(ErrorString)
    {
        MsgBox ErrorString
    }