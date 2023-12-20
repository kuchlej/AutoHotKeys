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
        if WinExist("Autotask - CMIT")
            WinActivate
        else
            Run "C:\Program Files (x86)\Google\Chrome\Application\chrome_proxy.exe  --profile-directory=Default --app-id=nijaiiofgknamapdnbanopnaalflgilo" 
    }

^!s::
    {
        Send "SonicWALL"
    }

^!w::
    {
        Send "WiFi"
    }

^!r::
    {
        if WinExist("Remote!")
            WinActivate
        else
            Run "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe https://cmitcincy.screenconnect.com" 
    }

^!n::
    { 
        if WinExist("Remote Notes (Pending) - OneNote")
            WinActivate
        else if WinExist("OneNote")
            WinActivate
        else 
            Run "ONENOTE.EXE"
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