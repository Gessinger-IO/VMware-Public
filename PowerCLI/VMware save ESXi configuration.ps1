<#
Backup ESXi configuration 
                 
Christian Kremer - 04052022
#>

write-host "Specify local backup destination path" -ForegroundColor Green 
$Path= Read-Host "Enter backup destination path on your local device" 


write-host "Specify vCenter FQDN or ESXi IP Adress" -ForegroundColor Green 
$vENV= Read-Host "Enter your vCenter FQDN or ESXi IP Adress" 


write-host "Connecting to vCenter or Host" -ForegroundColor Green
Connect-VIServer $vENV

Get-VMHost | Get-VMHostFirmware -BackupConfiguration -DestinationPath $Path