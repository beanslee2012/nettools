@echo off
setlocal enabledelayedexpansion
rem 启用延迟变量扩展，允许在循环中使用 ! 来引用变量。
set "output_file=dir_result.csv"

if exist "%output_file%" del "%output_file%"
(
    for /r %%I in (*) do (
        rem 2个百分号I 代表循环中的当前项目（文件或文件夹）。~ 符号表示对参数进行特殊扩展。d 表示扩展为驱动器号和路径。p 表示只扩展到路径部分，而不包括文件名。
        rem n 表示只提取名称部分，而不包括路径。x 表示只提取扩展名部分。
        rem 直接取完整路径和名称fI，其中 f 表示完整路径。
        set "full_path=%%~dpI"
        set "relative_path=!full_path:~2!"
        set "subdirs=!relative_path:\=","!",
        set "subdirs=!subdirs!"
        echo "!full_path!"!subdirs:~1!","%%~nxI"
    )
)> "%output_file%"

