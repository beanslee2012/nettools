
param ($proxy, $envname='proxy')

if  (-not $proxy)
{
Write-Output "use default Proxy addr" 
$ip = 'ip:port'
}
else 
{
$ip = $proxy
}


$regKey="HKCU:\Software\Microsoft\Windows\CurrentVersion\Internet Settings"
Set-ItemProperty -path $regKey ProxyEnable -value 1
Set-ItemProperty -path $regKey ProxyServer -value $ip
#Set-ItemProperty -path $regKey AutoConfigURL -Value $acs       
Write-Output "Proxy is now enabled" $ip
