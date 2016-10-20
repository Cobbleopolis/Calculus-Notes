@echo off
setlocal enableextensions enabledelayedexpansion
cd %~dp0
if not exist "images" mkdir images
cd images
for /R ..\Mathematica %%G in (*.wl) do (
    set assetPath=%%~pnG
    set assetPath=!assetPath:*Mathematica\=!
    if not "%%~nG" == "CreateAssets" (
        cd %~dp0images
        if not exist !assetPath! mkdir !assetPath!
    )
)
cd %~dp0
"%PROGRAMFILES%\Wolfram Research\Mathematica\11.0\wolframscript" -f "Mathematica\CreateAssets.wl"
endlocal
