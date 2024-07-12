@echo off
cls

echo Enter an integer:
set /p number=

for /l %%i in (10,-1,1) do (
    set /a result=%number% * %%i
    call echo %number% * %%i = %%result%%
)

pause
