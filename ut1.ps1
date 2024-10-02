$mnts = Get-Random -Minimum 14 -Maximum 18;
echo $mnts;
while (1) {
    
    $uptime = (get-date) - (gcim Win32_OperatingSystem).LastBootUpTime;
    
    $d = (&{If($($uptime.days) -lt 1) {""} Else {"$($uptime.days)d, "}});
    $h = (&{If($($uptime.Hours) -lt 1) {""} Else {"$($uptime.Hours)h, "}});
    $m = (&{If($($uptime.Minutes) -lt 1) {""} Else {"$($uptime.Minutes)m, "}});
    $s = (&{If($($uptime.Seconds) -lt 1) {""} Else {"$($uptime.Seconds)s "}});
    # (IIf () "" "");

    $up = "$d$h$m$s";
    
    # $uri = "https://api.github.com/repos/${{ github.repository }}/actions/runs/${{ github.run_id }}"
    # $res = Invoke-RestMethod $uri -Method Get -Headers @{"Authorization" = "Bearer ${{ env.token }}"}
    # echo $res.cancel_url
    $can_uri = "ksp_c_url"
    $token = "ksp_secret"

    # $res_can = Invoke-RestMethod $can_uri -Method Post -Headers @{"Authorization" = "Bearer $token"}
    
   If($uptime.Minutes -ge $mnts -and $uptime.Hours -ge 1)
     {
        break
        echo "Reborning"; Stop-Process -Name "s" -Force
     }

     Write-Output "KSP_TECH_VPS - up for $up";
    Start-Sleep -Seconds 2
     
   # If($uptime.Minutes -ge 28 -and $uptime.Hours -ge 5)
    # {
       # echo "Reborning";Stop-Process -Name "s" -Force
   #  }


    

}
