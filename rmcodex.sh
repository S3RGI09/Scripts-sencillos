#!/bin/bash
clear
date
echo "------------------------------------------------------"
echo "**************************************************"
echo "***  ____  __  __  ____ ___  ____  _______  __ ***"
echo "*** |  _ \|  \/  |/ ___/ _ \|  _ \| ____\ \/ / ***"
echo "*** | |_) | |\/| | |  | | | | | | |  _|  \  /  ***"
echo "*** |  _ <| |  | | |__| |_| | |_| | |___ /  \  ***"
echo "*** |_| \_\_|  |_|\____\___/|____/|_____/_/\_\ ***"
echo "***                                            ***"
echo "**************************************************"
echo "Script programado por S3RGI09 (Sergio Casero Verdial)"
echo "Escaner de Malware, utiliza ClamAV, chkrootkit y Warp."
echo "------------------------------------------------------"
sudo freshclam
echo "[+] Introduce el directorio que quiere escanear"
read dir
clamscan $dir
sudo chkrootkit
./warp.sh
