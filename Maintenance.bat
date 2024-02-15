@echo off

echo """""""""""""""""""""""""""""""""""""""""""""""""""""""""""

echo "  ##  ##    ####    #####     ####     ####      ##      "
echo "  ### ##   ##  ##   ##  ##   ##  ##   ##  ##    ####     "
echo "  ######   ##  ##   ##  ##   ##       ##       ##  ##    "
echo "  ######   ##  ##   #####     ####    ##       ######    "
echo "  ## ###   ##  ##   ####         ##   ##       ##  ##    "
echo "  ##  ##   ##  ##   ## ##    ##  ##   ##  ##   ##  ##    "
echo "  ##  ##    ####    ##  ##    ####     ####    ##  ##    "

echo """""""""""""""""""""""""""""""""""""""""""""""""""""""""""


echo Script de nettoyage et de verification des fichiers systeme

echo Debut du nettoyage des disques...
cleanmgr /sagerun:1

echo Lancement de la verification des fichiers systeme...
echo Veuillez patienter, la verification des fichiers systeme est en cours. Ceci peut prendre plusieurs minutes.
sfc /scannow

echo verification de l'image windows
Dism /Online /Cleanup-Image /ScanHealth

echo Lancement de la verification du disque...
echo O | chkdsk C: /f /r

echo Processus terminees. Redemarrage de l'ordinateur dans 10 secondes.
rem echo Processus terminees. Fermeture du terminal dans 5 secondes.
for /l %%i in (10,-1,1) do (
    echo Fermeture dans %%i secondes...
    ping 127.0.0.1 -n 2 > nul
)

rem Eteindre l'ordinateur avec une timelaps de 10 sec et fermeture des programmes en cours
shutdown -r -t 0 -f

rem for /l %%i in (5,-1,1) do (
    rem echo Fermeture dans %%i secondes...
    rem ping 127.0.0.1 -n 2 > nul
rem )

exit

