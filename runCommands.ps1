Import-Module ActiveDirectory
. ./scripts.ps1

$computers = Get-ADComputer -Filter $allWorkstations
foreach ($computer in $computers) 
{
    $computerName = $computer.Name
    Write-Host "Executing on $computerName"
    $result = Invoke-Command -ComputerName $computerName -ScriptBlock $userEnum
    	 
    $result | ForEach-Object {
        Write-Host $_
    }


    
}




