^!c::
    {
        if WinExist("Calculator")
            WinActivate
        else
            Run "calc"
    }

^!t::
    {
        TimeString := FormatTime( , "MM-dd-yyyy-hh:mm:sstt")
        Send TimeString
    }

^!a::
    {
        if WinExist("CRM")
            WinActivate
        else
            Run "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe http://autotask.net" 
    }

^!n::
    { 
        if WinExist("Remote Notes (Pending) - OneNote")
            WinActivate
        else if WinExist("Field Notes - OneNote")
            WinActivate
        else
            Run "ONENOTE.EXE"
    } 

^!r::
    {
        if WinExist("Remote!")
            WinActivate
        else
            Run "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe https://cmitcincy.screenconnect.com" 
    }

#+c::
    {
        A_Clipboard:=""
        Send "^c"
        ClipWait
        if WinExist("Allworx Interact") {
            WinActivate
            Send "^v{enter}"
        }
    }