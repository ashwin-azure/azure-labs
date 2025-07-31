# Export Backup Jobs for last 7 days
$vault = Get-AzRecoveryServicesVault -Name "MyVault"
Set-AzRecoveryServicesVaultContext -Vault $vault

$jobs = Get-AzRecoveryServicesBackupJob -From (Get-Date).AddDays(-7) -To (Get-Date)
$jobs | Export-Csv "C:\Reports\backup-jobs.csv" -NoTypeInformation