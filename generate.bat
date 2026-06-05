@echo off

for /f "tokens=1,2 delims=," %%a in (labels.txt) do (
    set image=%%a
    set label=%%b
    call :create
)

echo ✅ Fichiers TXT créés !
pause
exit /b

:create
set filename=%image:.jpg=.txt%
set filename=%filename:.png=.txt%
echo %label% > %filename%
exit /b