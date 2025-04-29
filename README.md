<a href='https://ko-fi.com/O4O3W3IIA' target='_blank'>
  <img height='36' style='border:0px;height:36px;' src='https://storage.ko-fi.com/cdn/kofi5.png?v=6' border='0' alt='Buy Me a Coffee at ko-fi.com' />
</a>


# 🛠️ HotfixInstaller

**HotfixInstaller** es un script de PowerShell diseñado para automatizar la instalación de archivos de hotfix (.msu) ubicados en un directorio específico. Proporciona una barra de progreso visual, manejo de errores y registro detallado de la actividad.

## ✨ Características

- **Instalación Automática**: Instala automáticamente todos los archivos .msu en un directorio especificado.
- **Barra de Progreso**: Muestra una barra de progreso en la consola para indicar el estado de la instalación.
- **Manejo de Errores**: Captura y registra cualquier error que ocurra durante la instalación.
- **Registro Detallado**: Guarda un registro detallado de todas las actividades y errores en un archivo de texto.
- **Optimización de Rendimiento**: Maneja eficientemente los recursos y proporciona una experiencia de usuario mejorada.

## 📋 Requisitos

- PowerShell 5.1 o superior.
- Permisos de administrador para ejecutar `wusa.exe`.

## 🔧 Uso

1. **Configuración del Directorio**: Asegúrate de que los archivos .msu que deseas instalar estén en el directorio `C:\Hotfixes`.
2. **Ejecución del Script**: Ejecuta el script con permisos de administrador.

```powershell
# Guarda el script en un archivo, por ejemplo, Install-Hotfixes.ps1
# Luego, ejecuta el script desde una consola de PowerShell con permisos de administrador
.\Install-Hotfixes.ps1
```

Revisión del Registro: Una vez completada la instalación, puedes revisar el archivo de registro C:\Hotfixes\hotfix_installation_log.txt para ver los detalles de la instalación y cualquier error que haya ocurrido.
## 🌟 Ejemplo de Uso
# Ejecutar el script
.\Install-Hotfixes.ps1

## 📜 Archivo de Registro
El archivo de registro hotfix_installation_log.txt se guarda en el mismo directorio que los archivos .msu (C:\Hotfixes). Este archivo contiene entradas con marcas de tiempo que detallan cada hotfix instalado y cualquier error encontrado.

## 📝 Notas
⚠️ Asegúrate de tener una copia de seguridad de tu sistema antes de instalar hotfixes.
💻 Este script está diseñado para ser ejecutado en sistemas Windows.
🔄 Si necesitas cambiar el directorio de los hotfixes, modifica la variable $hotfixDir en el script.

Si tienes alguna pregunta o necesitas ayuda adicional, no dudes en contactarme.


## Descripción del Documento:

- **Nombre del Repositorio**: **HotfixInstaller**.
- **Sección de Introducción**: Explica brevemente qué hace el script.
- **Características**: Enumera las características clave del script con iconos.
- **Requisitos**: Especifica los requisitos necesarios para ejecutar el script.
- **Uso**: Proporciona instrucciones paso a paso sobre cómo configurar y ejecutar el script.
- **Ejemplo de Uso**: Muestra un ejemplo de cómo ejecutar el script.
- **Archivo de Registro**: Explica dónde se guarda el archivo de registro y qué información contiene.
- **Notas**: Proporciona algunas notas adicionales y recomendaciones con iconos.
- **Licencia**: Indica que el script es de código abierto.
- **Script de Instalación de Hotfixes**: Incluye el script de PowerShell completo.

Este documento proporciona toda la información necesaria para que los usuarios puedan entender y utilizar el script de manera efectiva, todo en un solo archivo `.md` listo para ser utilizado en un repositorio de GitHub llamado **HotfixInstaller**, con iconos para mejorar la legibilidad y el atractivo visual.

## 🤝 **Contribuir**

¡Tu contribución es bienvenida! Si encuentras algún problema o tienes sugerencias para mejorar el plugin, por favor abre un issue o envía un pull request.
