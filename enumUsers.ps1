 . ./script.ps1





# Import the Active Directory module if it's not already loaded
if (-not (Get-Module -Name ActiveDirectory -ErrorAction SilentlyContinue)) {
    Import-Module ActiveDirectory
}
# Get a list of all computers in the domain
$computers = Get-ADComputer -Filter *
foreach ($computer in $computers) {
$computerName = $computer.Name



    $result = Invoke-Command -ComputerName $computerName -ScriptBlock $scriptBlock
     if ($result) {
        Write-Host $result
    } else {
        Write-Host "  Unable to retrieve on $computerName"
    }

    Write-Host ""


 }