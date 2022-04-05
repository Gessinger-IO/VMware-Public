<#
Enable SSH and ESXi shell on all hosts

TSM >>> ESXi Shell              
TSM-SSH >>> SSH                            
Christian Kremer - 02032022
#>

#Add vCenter FQDN
$vCenterFQDN="vCenterFQDN"
#Add VM-Name
$VMName="VM-Name"

Connect-VIServer $vCenterFQDN
Get-VM $VMName | %{(Get-View $_.Id).config.uuid}