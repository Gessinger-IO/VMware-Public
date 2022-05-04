<#
Restore ESXi configuration 
                 
Christian Kremer - 04052022
#>

write-host "Specify local backup destination path and the config file" -ForegroundColor Green 
$Path= Read-Host "Enter backup destination path on your local device" 


write-host "Specify ESXi IP" -ForegroundColor Green 
$ESXiHost= Read-Host "Enter your ESXi IP" 


write-host "Connecting to Host" -ForegroundColor Green
Connect-VIServer $ESXiHost

Get-VMHost | Set-VMHost -State Maintenance

Get-VMHost | Set-VMHostFirmware -Restore -Force -SourcePath $Path