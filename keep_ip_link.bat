@ECHO OFF
ECHO ��ʼ������������...
set IPADDRESS=ip��ַ
set INTERVAL=60
:PING
ping %IPADDRESS% -n 1 >nul
timeout %INTERVAL% >nul
GOTO PING