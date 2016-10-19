@echo off
setlocal enabledelayedexpansion
cd %~dp0
if not exist "images" mkdir images
cd images
for /R ..\Mathematica %%G in (*.wl) do (
    cd %~dp0\images
    set assetPath=%%~pnG
    set assetPath=!assetPath:*Mathematica\=!
    if not exist !assetPath! mkdir !assetPath!
    cd !assetPath!
    wolframscript -f %%G
)
endlocal
