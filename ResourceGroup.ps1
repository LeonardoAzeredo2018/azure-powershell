$ResourceGroupName = "powershell-grp"
$Location = "EASTUS2"
New-AzresourceGroup -Name $ResourceGroupName -Location $Location



$ResourceGroupName = "powershell-grp"
Remove-AzResourceGroup $ResourceGroupName -Force
'Removed Resource Group ' + $ResourceGroupName


$Location = "EASTUS2"
$ResourceGroup = New-AzresourceGroup -Name $ResourceGroupName -Location $Location

'Provisioning State ' + $ResourceGroup.ProvisioningState


$ResourceGroupExisting = Get-AzResourceGroup -Name $ResourceGroupName
$ResourceGroupExisting


$AllResourceGroups = Get-AzResourceGroup
foreach($Group in $AllResourceGroups)
{
    'Removing Resource Group ' + $Group.ResourceGroupName
    Remove-AzResourceGroup -Name $Group.ResourceGroupName -Force
}