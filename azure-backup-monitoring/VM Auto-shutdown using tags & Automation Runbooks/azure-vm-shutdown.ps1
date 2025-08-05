$connection = Get-AutomationConnection -Name "AzureRunAsConnection"
Connect-AzAccount -ServicePrincipal -Tenant $connection.TenantID `
  -ApplicationId $connection.ApplicationId -CertificateThumbprint $connection.CertificateThumbprint

$VMs = Get-AzVM | Where-Object { $_.Tags["Shutdown"] -eq "Yes" -and $_.PowerState -ne "VM deallocated" }

foreach ($vm in $VMs) {
    Write-Output "Shutting down VM: $($vm.Name)"
    Stop-AzVM -Name $vm.Name -ResourceGroupName $vm.ResourceGroupName -Force
}
