@echo off
setlocal enabledelayedexpansion

set NEW=resourcePacks:["vanilla","mod_resources","Moonlight Mods Dynamic Assets","fabric","file/Mandala\u0027s GUI - Dark mode Mod Compat 0.2.7 beta Hotfix.zip",...]

(for /f "usebackq delims=" %%L in ("options.txt") do (
    set line=%%L
    if "!line:~0,14!"=="resourcePacks:" (
        echo %NEW%
    ) else (
        echo %%L
    )
)) > options.tmp

move /y options.tmp options.txt
