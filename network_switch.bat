
@echo off 
netsh interface show interface "%~1"|findstr "����״̬" 
netsh interface show interface "%~1"|findstr "�ѽ���" >nul
echo %errorlevel%
if %errorlevel% equ 0 (
  echo �ѽ���,��������...
  netsh interface set interface "%~1" enable
) else (
    echo ������,���ڽ���...
    netsh interface set interface "%~1" disabled 

)