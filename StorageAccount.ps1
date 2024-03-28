$AccountName = "stoappstore40008989"
$AccountKind = "StorageV2"
$AccountSKU = "Standard_LRS"
$ResourceGroupName = "powershell-grp"
$Location = "EASTUS2"

$StorageAccount = New-AzStorageAccount -ResourceGroupName $ResourceGroupName -Name $AccountName -Location $Location -Kind $AccountKind -SkuName $AccountSKU
$StorageAccount