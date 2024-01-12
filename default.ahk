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

^!t::
    {
        TimeString := FormatTime( , "MM-dd-yyyy-hh:mm:sstt")
        Send TimeString
    }

^!a::
    {
        if WinExist("Autotask - CMIT")
        {
            WinActivate
        }
        else
        {
            PopUpError("Couldn't Activate Autotask Window")
        }
    }

^!s::
    {
        Send "SonicWALL"
    }

^!w::
    {
        Send "WiFi"
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

^!r::
    {
        if WinExist("Remote!")
        {
            WinActivate
        }
        else 
        {
            PopUpError("There isn't a Remote! browser open")
        }
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