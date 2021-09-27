
@echo off 
netsh interface show interface "%~1"|findstr "管理状态" 
netsh interface show interface "%~1"|findstr "已禁用" >nul
echo %errorlevel%
if %errorlevel% equ 0 (
  echo 已禁用,正在启用...
  netsh interface set interface "%~1" enable
) else (
    echo 已启用,正在禁用...
    netsh interface set interface "%~1" disabled 

)