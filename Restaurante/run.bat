@echo off
REM Run the Restaurante application (Windows cmd)
set "APP_DIR=%~dp0"
set "CP=%APP_DIR%bin;%APP_DIR%bin\librerias\*"
java -cp "%CP%" restaurante.Restaurante
pause
