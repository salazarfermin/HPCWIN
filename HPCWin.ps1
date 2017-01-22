[string]$SubscriptionId = 'a3031bbc-4497-4414-90df-e927b85922f9';
#[string]$SubscriptionId = '86e16eab-9149-438c-b23f-042a43311e1c';
[string]$ResourceGroupName = 'DCPNTI-GSPI-WinHPC';
#[string]$Location = 'South Central US';
#[string]$Location = 'southcentralus';
[string]$Location = 'eastus';

#Login-AzureRmAccount -SubscriptionId $SubscriptionId;

#New-AzureRmResourceGroup -Name $ResourceGroupName -Location $Location;

#New-AzureRmResourceGroupDeployment -Name hpc-ctest-vnet -ResourceGroupName $ResourceGroupName -TemplateFile (Join-Path (Split-Path $myinvocation.mycommand.path) 'vnet\vnetdeploy.json') -TemplateParameterFile (Join-Path (Split-Path $myinvocation.mycommand.path) 'vnet\parameters.json') -Verbose;

#New-AzureRmResourceGroupDeployment -Name hpc-ctest -ResourceGroupName $ResourceGroupName -TemplateFile (Join-Path (Split-Path $myinvocation.mycommand.path) 'azuredeploy.json') -Verbose -DeploymentDebugLogLevel All;

Remove-AzureRmResourceGroup -Name $ResourceGroupName;

#Get-AzureRmNetworkInterface -Name '/subscriptions/a3031bbc-4497-4414-90df-e927b85922f9/resourcegroups/DCPNTI-GSPI-HPC/providers/Microsoft.Network/networkInterfaces/VWAZUHPCD000-nic24vxu3qcdzbky' -ResourceGroupName 'DCPNTI-GSPI-HPC';

#$operations = Get-AzureRmResourceGroupDeploymentOperation –DeploymentName hpc-ctest –ResourceGroupName $ResourceGroupName;

#foreach($operation in $operations)
#{
#    Write-Host $operation.id
#    Write-Host "Request:"
#    $operation.Properties.Request | ConvertTo-Json -Depth 10
#    Write-Host "Response:"
#    $operation.Properties.Response | ConvertTo-Json -Depth 10
#}
#VWAZUHPCD000-nic24vxu3qcdzbky