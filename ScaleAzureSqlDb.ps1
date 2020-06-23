$rgName = ""
$dbName = ""
$dbServer = ""
 
$azureClientId =""
$azurePassword = ConvertTo-SecureString "" -AsPlainText -Force
$pscredential = New-Object System.Management.Automation.PSCredential($azureClientId, $azurePassword) 
Connect-AzAccount -ServicePrincipal -Credential $pscredential -TenantId "" 
 
Select-AzSubscription ""
Set-AzSqlDatabase -ResourceGroupName $rgName -DatabaseName $dbName -ServerName $dbServer -Edition "Standard" -RequestedServiceObjectiveName "S1"
