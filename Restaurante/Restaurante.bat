@echo off
cd /d "%~dp0bin"
start javaw -cp ".;librerias/*" restaurante.Restaurante
exit
