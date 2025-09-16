@echo off
powershell -NoProfile -ExecutionPolicy Bypass -File "C:\Users\Enric Pujol\Documents\WindowsPowerShell\Scripts\Limpiador Windows\Script_Cleaner.ps1"
pause


@echo off
echo ATENCIÓN: Se van a borrar definitivamente los archivos temporales, Descargas y Papelera.
set /p confirm=¿Desea continuar? (S/N): 

if /I "%confirm%"=="S" (
    powershell -ExecutionPolicy Bypass -File "C:\Users\Enric Pujol\Documents\WindowsPowerShell\Scripts\Limpiador Windows\Script_Cleaner.ps1"
    ) else (
    echo Operacion cancelada.
    pause
)