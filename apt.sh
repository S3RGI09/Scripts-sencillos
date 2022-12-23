warp-cli disconnect
clear
date
echo "----------------------"
echo "Gestor de paquetes APT"
echo "----------------------"
curl ifconfig.me
echo ""
echo ""
echo "Lista de paquetes"
sudo apt update
echo ""
echo "Descarga e instalacion"
echo ""
sudo apt upgrade
echo ""
echo "Desinstalacion de paquetes obsoletos"
sudo apt autoremove
echo ""
echo "* Ya he acabado, todos sus paquetes han sido actualizados. *"
echo "# Si hay algun error con las dependencias, configure el APT manualmente #"
echo ""
