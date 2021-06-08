@ECHO OFF
:choice
echo Inside 4.0

set /P c=Vuoi eliminare le cache del server?[Si/No]
if /I "%c%" EQU "s" goto :somewhere
if /I "%c%" EQU "n" goto :somewhere_else
goto :choice
:somewhere
echo "Eliminando le cache..."
rd /s /q "C:\Users\Administrator\Desktop\Inside_4.0\server-data\cache"
rd /s /q "C:\Users\Administrator\Desktop\Inside_4.0\data\crashes"
echo -
echo FXServer
echo -
start C:\Users\Administrator\Desktop\Inside_4.0\data\FXServer.exe +exec server.cfg +set onesync on +set onesync_enableInfinity 1 +set onesync_population true +set onesync_forceMigration true +set onesync_distanceCullVehicles true
exit
:somewhere_else
echo
@echo off
echo -
echo Il server verra avviato senza cancellare nulla 
echo -
start C:\Users\Administrator\Desktop\Inside_4.0\data\FXServer.exe +exec server.cfg +set onesync on +set onesync_enableInfinity 1 +set onesync_population true +set onesync_forceMigration true +set onesync_distanceCullVehicles true
exit