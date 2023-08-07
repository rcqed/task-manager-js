@echo off
chcp 65001

:menu
echo 请选择一个操作：
echo 1. 运行 "python Project-File-Renamer.py"
echo 2. 将当前目录的文件名写入 filename.txt
set /p choice=输入选项并按 Enter: 

if "%choice%"=="1" (
    python Project-File-Renamer.py
) else if "%choice%"=="2" (
    dir /b > filename.txt
    echo 文件名已写入 filename.txt。
) else (
    echo 无效的选项，请重新输入。
    goto menu
)
