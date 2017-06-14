@echo off
echo ################################################
echo # Setup für Netzlaufwerke                      #
echo # Bei Fragen bitte an Thorsten Haug            # 
echo ################################################

rem Tools Ordner anlegen
IF NOT EXIST "C:\_admin" mkdir C:\_admin
IF NOT EXIST "C:\_admin\tools" mkdir C:\_admin\tools
IF NOT EXIST "C:\_admin\tools\Netzlaufwerke" mkdir C:\_admin\tools\Netzlaufwerke

rem bestehende Skripte entfernen
del C:\_admin\tools\Netzlaufwerke\config\*.cmd /s /q
del C:\_admin\tools\Netzlaufwerke\config\*.bat /s /q
del C:\_admin\tools\Netzlaufwerke\*.cmd /s /q
del C:\_admin\tools\Netzlaufwerke\*.bat /s /q

del "%appdata%\Microsoft\Windows\Start Menu\Programs\Startup\*.cmd" /s /q
del "%appdata%\Microsoft\Windows\Start Menu\Programs\Startup\*.bat" /s /q

rem notwendige Dateien kopieren
xcopy "Netzlaufwerkeverbinden\config" C:\_admin\tools\Netzlaufwerke\config /Y /I
xcopy "Netzlaufwerkeverbinden\Netzlaufwerke-Verbinden.cmd" C:\_admin\tools\Netzlaufwerke\ /Y /I
xcopy "Laufwerk_neu_verbinden.lnk" "C:\Users\%USERNAME%\Desktop" /Y /I
xcopy "Laufwerk_neu_verbinden.lnk" "%appdata%\Microsoft\Windows\Start Menu\Programs\Startup" /Y /I
pause


