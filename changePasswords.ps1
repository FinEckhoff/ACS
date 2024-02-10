Import-Module ActiveDirectory
. ./scripts.ps1

$passwords = @(

    'Zero',
    'One',
    'Two',
    'Three'
    
    )

$users = Get-ADUser -Filter
for ($i=0; $i -l $users.Count; $i=$i+1 ){

    $user = $users[i]
    $userName = $user.Name
    $newPass = $passwords[i]
    Write-Host "$userName : $newPass"

    Set-ADAccountPassword -Identity $userName -NewPassword (ConvertTo-SecureString -AsPlainText $newPass -Force)
    

    

    
}
