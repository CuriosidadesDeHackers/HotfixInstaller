# Directorio donde se encuentran los archivos de hotfix
$hotfixDir = "C:\Hotfixes"

# Archivo de registro
$logFile = "C:\Hotfixes\hotfix_installation_log.txt"

# Obtener todos los archivos .msu en el directorio
$hotfixes = Get-ChildItem -Path $hotfixDir -Filter *.msu
$totalHotfixes = $hotfixes.Count
$currentHotfix = 0

# Función para registrar mensajes
function Write-Log {
    param (
        [string]$message
    )
    $timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
    $logMessage = "$timestamp - $message"
    Add-Content -Path $logFile -Value $logMessage
    Write-Output $logMessage
}

# Verificar si hay hotfixes para instalar
if ($totalHotfixes -eq 0) {
    Write-Log "No se encontraron archivos .msu en el directorio $hotfixDir."
    exit
}

# Instalar cada hotfix
foreach ($hotfix in $hotfixes) {
    $currentHotfix++
    $hotfixPath = $hotfix.FullName
    $percentComplete = ($currentHotfix / $totalHotfixes) * 100

    Write-Progress -Activity "Instalando hotfixes" -Status "Instalando $hotfixPath" -PercentComplete $percentComplete
    Write-Log "Instalando hotfix: $hotfixPath"

    try {
        Start-Process -FilePath "wusa.exe" -ArgumentList "$hotfixPath /quiet /norestart" -Wait -ErrorAction Stop
        Write-Log "Hotfix instalado correctamente: $hotfixPath"
    } catch {
        Write-Log "Error al instalar el hotfix: $hotfixPath. Error: $_"
    }
}

Write-Log "Instalación de hotfixes completa."
