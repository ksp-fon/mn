while (1) {
    
    $uptime = (get-date) - (gcim Win32_OperatingSystem).LastBootUpTime;
    
    $d = (&{If($($uptime.days) -lt 1) {""} Else {"$($uptime.days)d, "}});
    $h = (&{If($($uptime.Hours) -lt 1) {""} Else {"$($uptime.Hours)h, "}});
    $m = (&{If($($uptime.Minutes) -lt 1) {""} Else {"$($uptime.Minutes)m, "}});
    $s = (&{If($($uptime.Seconds) -lt 1) {""} Else {"$($uptime.Seconds)s "}});
    # (IIf () "" "");

    $up = "$d$h$m$s";
    


   If($uptime.Minutes -ge 18 -and $uptime.Hours -ge 1)
     {echo "Reborning";python c:\rdp.py;shutdown -s -f -t 36}


    Write-Output "KSP_TECH_VPS - up for $up";


    
    Start-Sleep -Seconds 2

}
