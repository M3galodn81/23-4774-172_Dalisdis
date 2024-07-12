@echo off
cls

echo Enter time in 24-hour format (HH:MM):
set /p time24=

set hour=%time24:~0,2%
set min=%time24:~3,2%
set ampm=AM

if %hour% geq 12 (
    set ampm=PM
    if %hour% gtr 12 (
        set /a hour=hour-12
    )
) else if %hour% equ 00 (
    set hour=12
)

echo 12-hour format: %hour%:%min% %ampm%
pause

