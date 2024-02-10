$userEnum = {
    	$localUsers = Get-WmiObject -Class Win32_UserAccount
    	$localUsersList = $localUsers | Select-Object -Property Name

		$return = @($localUsersList)

    	$return
}

$update = {
	Install-Module -Name PSWindowsUpdate -Force -Confirm:$false

}

$allWorkstations = 'Name -like "WS*"'
$allMailServer = 'Name -like "Mail*"'
$normalUserAccounts = 'Name -match "^[a-zA-Z]+\.[a-zA-Z]+$"'

