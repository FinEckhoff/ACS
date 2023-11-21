 
 $scriptBlock = {
        $localUsers = Get-WmiObject -Class Win32_UserAccount | Where-Object { $_.LocalAccount -eq $true }
        $localUsers | Select-Object -Property Name
   
   
   
    }