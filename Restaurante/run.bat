@echo off
REM Run the Restaurante application (Windows cmd)
set "APP_DIR=%~dp0"
set "CP=%APP_DIR%bin;%APP_DIR%bin\\librerias\\*"
@echo off
cd "c:\Users\noa_y\Desktop\proyecto_Est\ProyectoInf113-prueba\Restaurante" && java -cp "bin;bin\librerias\*" restaurante.Restaurante
