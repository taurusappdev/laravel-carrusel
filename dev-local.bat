@echo off
echo Levantando servidor local en red...

start "Laravel" cmd /k "php artisan serve --host=0.0.0.0 --port=8000"
start "Reverb" cmd /k "php artisan reverb:start --host=0.0.0.0 --port=8080"
start "Queue" cmd /k "php artisan queue:listen --tries=1"

echo.
echo Servidores iniciados:
echo   App:    http://0.0.0.0:8000  (usa tu IP local)
echo   Reverb: ws://0.0.0.0:8080
echo.
echo Para saber tu IP ejecuta: ipconfig
