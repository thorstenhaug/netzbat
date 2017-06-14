@echo off
echo ################################################
echo # Netz.bat zum verbinden der lokalen Laufwerke #
echo # Bei Fragen bitte an Thorsten Haug            # 
echo ################################################

rem Einstellungen
call C:\_admin\tools\Netzlaufwerke\config\server_config.cmd
call C:\_admin\tools\Netzlaufwerke\config\user_config.cmd
call C:\_admin\tools\Netzlaufwerke\config\pass_config.cmd

rem Alle Netzlaufwerke löschen
net use * /delete /yes

rem Netzlaufwerke verbinden
net use S: \\%serverip%\""Freigabename1"" /user:%bn% %pw% /persistent:yes
net use Z: \\%serverip%\""Freigabename2"" /user:%bn% %pw% /persistent:yes
net use Y: \\%serverip%\""Freigabename3"" /user:%bn% %pw% /persistent:yes
net use X: \\%serverip%\""Freigabename4"" /user:%bn% %pw% /persistent:yes