@echo off
setlocal enabledelayedexpansion

set proxy=http://127.0.0.1:12345
echo git proxy current is :
git config --get http.proxy
echo ################################
SET check=""
FOR /F "tokens=*" %%a in ('git config --get http.proxy') do SET check=%%a

rem echo %check%| findstr %proxy% >nul
rem if %errorlevel% == 0 ( echo y) else echo (n)

echo %check%| findstr %proxy% >nul && (
   git config --global --unset http.proxy
   echo git proxy is cleared.
) || (
 git config --global http.proxy %proxy%
 echo git proxy is set to  %proxy%
)
 

pause
