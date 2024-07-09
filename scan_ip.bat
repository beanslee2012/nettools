for /L %i in (0,1,255) do ping -n 1 -w 250 192.168.3.%i>>ipaddress.txt
