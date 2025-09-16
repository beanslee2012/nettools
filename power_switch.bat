
@echo off
setlocal enabledelayedexpansion
chcp 65001 >nul
:: 定义目标GUID（示例值，请替换实际GUID）
set GUID_LOW=381b4222-f694-41f0-9685-ff5bb260df2e
set GUID_HIGH=aa8f0e51-c35d-48cc-93a5-052b0ed73df8

:: 获取当前活动GUID
for /f "tokens=2 delims=:" %%a in ('powercfg /getactivescheme') do (
    for /f "tokens=1 delims= " %%b in ("%%a") do set CURRENT_GUID=%%b
)

:: 判断并切换模式
if "%CURRENT_GUID%"=="%GUID_LOW%" (
    powercfg /setactive %GUID_HIGH%
    echo "已从平衡模式切换到高性能模式"
) else if "%CURRENT_GUID%"=="%GUID_HIGH%" (
    powercfg /setactive %GUID_LOW%
    echo "已从高性能模式切换到平衡模式"
) else (
    echo 当前模式不符合预设GUID
)
powercfg /list
timeout /t 5 /nobreak >nul
