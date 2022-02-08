@ECHO OFF
ECHO 开始保持网络连接...
set IPADDRESS=ip地址
set INTERVAL=60
:PING
ping %IPADDRESS% -n 1 >nul
timeout %INTERVAL% >nul
GOTO PING