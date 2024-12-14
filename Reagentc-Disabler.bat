@echo off
reagentc /info | find "Recovery is disabled"
if %errorlevel% equ 0 (
    echo Recovery is already disabled.
) else (
    reagentc /disable
    echo Recovery has been disabled.
)
pause