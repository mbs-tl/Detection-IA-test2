@echo off
setlocal EnableDelayedExpansion

for %%D in (im_ia im_real remplacement_im_ia remplacement_im_real) do (
    echo Traitement du dossier %%D
    for %%F in ("%%D\*.*") do (
        if /I not "%%~xF"==".txt" (
            set /A R=!RANDOM! %% 2
            if !R! EQU 0 (
                echo IA > "%%~dpnF.txt"
            ) else (
                echo Réelle > "%%~dpnF.txt"
            )
        )
    )
)

echo Terminé.
pause