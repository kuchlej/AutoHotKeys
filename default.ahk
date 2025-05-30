currWin := unset
prevWin := unset


^!1::
{
	if WinExist("AT")
	{
		PopUpError("Autotask window is already open")
	}
	else
	{
		Run "C:\Program Files\Google\Chrome\Application\chrome.exe --new-window https://autotask.net --window-name='AT'"
	}
	if WinExist("Microsoft Teams")
        {
        	PopUpError("Teams is already open")
        }
        else
        {
        	Run "ms-teams.exe"
        }
	if WinExist("Outlook")
        {
         	PopUpError("Outlook is already open")
        } 
	else 
	{
        	Run "Outlook.exe"
        }
	if WinExist("Remote!")
	{
		PopUpError("Remote window is already open.")
	}
	else
	{
		Run "C:\Program Files\Google\Chrome\Application\chrome.exe https://one.kaseya.com/login --new-window --window-name='Remote!' --disable-features=UseEcoQoSForBackgroundProcess"
	}
	if WinExist("3CX")
	{
		PopUpError("3CX chat window is already open.")
	}
	else
	{
		Run "C:\Program Files\Google\Chrome\Application\chrome_proxy.exe  --profile-directory=Default --app-id=fapijdmibhfljihajhglfpmmbjhamgdo"
	}
	if WinExist("Sticky Notes")
	{
		PopUpError("Sticky Notes is already open.")
	}
	else
	{
		runApp("Sticky Notes")
	}
	
}

^!3::
{
	global 
	if (WinExist("3CX")) && WinActive("3CX")
	{
		PopUpError "You're standing on it, dude."
	}
	else if (WinExist("3CX")) && !(WinActive("3CX"))
	{
	    	currWin:=WinGetTitle("A")
	        WinActivate
	}
	else if !(WinExist("3CX"))
        {
		Run "C:\Program Files\Google\Chrome\Application\chrome_proxy.exe  --profile-directory=Default --app-id=emokemolndgadfopgcmkekbbfcdfjdip"
        }
}	

^!a::
{
	global
        if (WinExist("AutoTask")) && !(WinActive("AutoTask"))
        {
		currWin:=WinGetTitle("A")
        	WinActivate
        }
	else if (WinExist("AutoTask")) && (WinActive("AutoTask"))
	{
		PopUpError "You're standing on it, dude"
	}
        else if !(WinExist("AutoTask"))
        {
		Run "C:\Program Files\Google\Chrome\Application\chrome.exe --new-window https://autotask.net --window-name='AutoTask'"
        }
}


^!c::
{
	global
	if WinExist("Calculator") && WinActive("Calculator")
	{
		PopUpError "You're standing on it, dude"
	}
        else if WinExist("Calculator") && !(WinActive("Calculator"))
        {
		currWin:=WinGetTitle("A")
        	WinActivate
        }
        else
        {
		currWin:=WinGetTitle("A")
        	Run "calc"
        }
}

^!d::
{
	DateString := FormatTime( , "MM-dd-yyyy")
    	Send DateString
}
^!e::
{
	Send "Everything was fine after that."
}

^!f::
{
	global
	if WinExist("Firefox") && WinActive("Firefox")
	{
		PopUpError "Your'e standing on it, dude"
	}
	else if WinExist("Firefox") && !(WinActive("Firefox"))
        {
		currWin:=WinGetTitle("A")
        	WinActivate
        }
	else
        {
		currWin:=WinGetTitle("A")
        	Run "C:\Program Files\Mozilla Firefox\firefox.exe"
        }
}


^!l::
{
	global
	if WinExist("Left!") && WinActive("Left!")
	{
		PopUpError "You're standing on it, dude"
	}
	else if WinExist("Left!") && !(WinActive("Left!"))
        {
		currWin:=WinGetTitle("A")
        	WinActivate
        }
	else
        {
		currWin:=WinGetTitle("A")
        	Run "C:\Program Files\Google\Chrome\Application\chrome.exe --window-name='Left!'"
        }
}


^!m::
{
	global
        if WinExist("Tech Meeting") && !(WinActive("Tech Meeting"))
        {
		currWin:=WinGetTitle("A")
        	WinActivate
        }
        else if WinExist("Microsoft Teams") && !(WinActive("Microsoft Teams"))
        {
		currWin:=WinGetTitle("A")
        	WinActivate
        }
        else
        {
		currWin:=WinGetTitle("A")
        	Run "ms-teams.exe"
        }
}

^!n::
{
	global
        if WinExist("Remote Notes - OneNote") && !(WinActive("Remote Notes - OneNote"))
       	{
		currWin:=WinGetTitle("A")
        	WinActivate
       	}
	else if WinExist("Remote Notes - OneNote") && WinActive("Remote Notes - OneNote")
	{
		PopUpError "You're standing on it, Dude"
	}
        else if WinExist("Field Notes - OneNote") && !(WinActive("Field Notes - OneNote"))
       	{
		currWin:=WinGetTitle("A")
        	WinActivate
       	}
	else if WinExist("Field Notes - OneNote") && WinActive("Field Notes - OneNote")
	{
		PopUpError "You're standing on it, Dude"
	}
        else if WinExist("OneNote") && !(WinActive("OneNote"))
       	{
		currWin:=WinGetTitle("A")
       		WinActivate
        }
	else if WinExist("OneNote") && WinActive("OneNote")
	{
		PopUpError "You're standing on it, Dude"
	}
       	else
        {
		currWin:=WinGetTitle("A")
       		Run "ONENOTE.EXE"
        }
} 

^!o::
{
	global
        if WinExist("Outlook") && !(WinActive("Outlook"))
        {
		currWin:=WinGetTitle("A")
        	WinActivate
	}
	else if WinExist("Outlook") && WinActive("Outlook")
	{
		PopUpError "Your'e standing on it, dude"
	} 
	else 
	{
		currWin:=WinGetTitle("A")
	        Run "Outlook.exe"
        }
}    

^!p:: 
{
	global
	if WinExist("Sticky Notes") && WinActive("Sticky Notes") 
	{
		PopUpError("You're standing on it, dude.")
	}  
	else if WinExist("Sticky Notes") && !(WinActive("Sticky Notes")) 
	{
		currWin:=WinGetTitle("A")
		WinActivate
	} 
	else
	{
		PopUpError("Give this one a few seconds")
		runApp('Sticky Notes')
		
	}

}

^!r::
{
	global
	if WinExist("Remote!") && WinActive("Remote!")
	{
		PopUpError("You're standing on it, dude")
	}
	else if WinExist("Remote!") && !(WinActive("Remote!"))
        {
		currWin:=WinGetTitle("A")
        	WinActivate
        }
	else
        {
		currWin:=WinGetTitle("A")
        	Run "C:\Program Files\Google\Chrome\Application\chrome.exe --new-window https://one.kaseya.com/login --window-name='Remote!'"
        }
}

^!s::
{
    	Send "SonicWALL"
}

^!t::
{
    	TimeString := FormatTime( , "MM-dd-yyyy-hh:mm")
    	Send TimeString
}
^!u::
{
	Send "set-inform http://unifi.cmitcincy.com:8080/inform"
}

^!w::
{
        Send "WiFi"
}

^!z::
{
	global
	if IsSet(currWin)
	{
		prevWin := WinGetTitle("A")
	    	if WinExist(currWin) && !(WinActive(currWin))
		{
			WinActivate
			currWin := prevWin
		}
		else if WinExist(currWin) && WinActive(currWin)
		{
			PopUpError "You're standing on it, dude."
		} 
		else
		{
			PopUpError "Window no there, bro"
		}
	}
	else
	{
		PopUpError "No saved Window."
	}
}

PopUpError(ErrorString) 
{
        MsgBox ErrorString
}

runApp(appName) 
{
 For app in ComObject('Shell.Application').NameSpace('shell:AppsFolder').Items
  (app.Name = appName) && RunWait('explorer shell:appsFolder\' app.Path)
}