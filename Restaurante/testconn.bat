@echo off
REM Test DB connection using the small TestConn helper
set "APP_DIR=%~dp0"
set "CP=%APP_DIR%bin;%APP_DIR%bin\librerias\*"
java -cp "%CP%" TestConn
pause
