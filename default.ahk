﻿^!c::
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
<<<<<<< HEAD
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
=======
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
        else if WinExist("OneNote")
            WinActivate
        else
            Run "ONENOTE.EXE"
    } 
>>>>>>> 76b46cbfdc8cb7b9df6df84330bddc1551f81bbe

^!r::
    {
        if WinExist("Remote!")
            WinActivate
        else
            Run "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe https://cmitcincy.screenconnect.com" 
    }

<<<<<<< HEAD
^!n::
    { 
        if WinExist("Remote Notes (Pending) - OneNote")
            WinActivate
        else if WinExist("OneNote")
            WinActivate
        else 
            Run "ONENOTE.EXE"
    } 

=======
>>>>>>> 76b46cbfdc8cb7b9df6df84330bddc1551f81bbe
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