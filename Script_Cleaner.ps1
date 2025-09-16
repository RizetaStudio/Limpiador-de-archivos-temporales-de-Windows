$systemTemp = "$env:SystemRoot\Temp"
$userTemp = "$env:TEMP"
$downloads = "$env:USERPROFILE\Downloads"

Write-Output "            ##                         ##  
                                       ##  
 ######    ###     ######    ####     #####    ####  
  ##  ##    ##     #  ##    ##  ##     ##         ##  
  ##        ##       ##     ######     ##      #####  
  ##        ##      ##  #   ##         ## ##  ##  ##  
 ####      ####    ######    #####      ###    #####  
"

Write-Output "           ###  
            ##  
  ####      ##      ####     ####    #####     ####    ######  
 ##  ##     ##     ##  ##       ##   ##  ##   ##  ##    ##  ##  
 ##         ##     ######    #####   ##  ##   ######    ##  
 ##  ##     ##     ##       ##  ##   ##  ##   ##        ##  
  ####     ####     #####    #####   ##  ##    #####   ####  
"

function Clear-Folder($folder) {
    if (Test-Path $folder) {
        Get-ChildItem $folder -Recurse -Force -ErrorAction SilentlyContinue | Remove-Item -Recurse -Force -ErrorAction SilentlyContinue
        Write-Output "Preparado para limpiar: $folder"
    } else {
        Write-Output "Carpeta no encontrada: $folder"
    }
}

Clear-Folder $systemTemp
Clear-Folder $userTemp
Clear-Folder $downloads

Write-Output "Preparado para limpiar: Papelera de reciclaje"
Clear-RecycleBin -Force -ErrorAction SilentlyContinue

Write-Output "Preparado para ejecutar la limpieza:"

