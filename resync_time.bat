rem run as admin

w32tm  /config /manualpeerlist:"time.nist.gov time.windows.com time-nw.nist.gov time-a.nist.gov time-b.nist.gov time-a.timefreq.bldrdoc.gov time-b.timefreq.bldrdoc.gov time-c.timefreq.bldrdoc.gov utcnist.colorado.edu" /syncfromflags:manual /update
rem w32tm /query /configuration
net start w32time
w32tm /resync
