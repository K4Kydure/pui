@echo off
setlocal EnableDelayedExpansion

set "FILE=options.txt"

if not exist "%FILE%" (
    echo options.txt not found.
    exit /b 1
)

set "TMP=%TEMP%\options_%RANDOM%.tmp"

(
for /f "usebackq delims=" %%L in ("%FILE%") do (
    set "line=%%L"

    if "!line:~0,14!"=="resourcePacks:" (
        echo resourcePacks:["vanilla","mod_resources","file/Mandala\u0027s GUI - Dark mode Mod Compat 0.2.7 beta Hotfix.zip","file/Tetra_GUI_v.0.8.1.zip","file/Faithless 1.20.zip","file/Aether Regenerated v1.2.1.zip","file/Frozy\u0027s Quest Book.zip","file/Lopy-Create-Sophisticated-Backpacks.zip","file/Create Immersive Aircrafts Resource Pack 1.20.1 - 2.0.zip","file/Create Computers 1.2.1 - 1.20.1.zip","file/Create Simple Storage 2.1.zip","file/Better tom\u0027s create storage 1.1.zip","file/Createful-Plaques v0.6 (1.20.x).zip","file/Icon Xaero\u0027s 1.2 HF.zip","file/Enigmatic 3D (V1.6.0.2).zip","file/CU - 3d Wrench.zip","file/RoP v1.5.1.zip","file/Newer Age v0.2.zip","file/[Moonsu] Better GUI for Sophisticated Backpacks 1.0.zip","file/Alex\u0027s Titles.zip","file/Create_Addons_Fix_v1.zip","file/Visual Titles.zip","file/Suren Sophisticated Storage v1.0.1.zip","file/Faithless Fix.zip","file/Rename Compat Project.zip","file/2D Sprites - End Remastered 3D v.3.5 - 1.20.1.zip","Moonlight Mods Dynamic Assets","fabric","file/NathanLithia"]
    ) else (
        echo(!line!
    )
)
) > "%TMP%"

move /y "%TMP%" "%FILE%" >nul

echo resourcePacks updated.
