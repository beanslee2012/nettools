$regKey="HKCU:\Software\Microsoft\Windows\CurrentVersion\Internet Settings"
Set-ItemProperty -path $regKey ProxyEnable -value 0 -ErrorAction Stop
Set-ItemProperty -path $regKey ProxyServer -value "" -ErrorAction Stop
Set-ItemProperty -path $regKey AutoConfigURL -Value "" -ErrorAction Stop       
Write-Output "Proxy is now Disabled"
