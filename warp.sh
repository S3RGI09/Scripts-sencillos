#!/bin/bash

clear
echo "----------------------"
echo "|      Warp.sh       |"
echo "| S3RGI09 | H4ckS0r7 |"
echo "----------------------"
echo ""
echo "-----------------------------"
PS3="Selecciona una operación: " 

select opt in Conectar Desconectar IP-Publica Salir; 

do 
        case $opt in    
                Conectar)   
                        warp-cli connect
                        ;; 
                Desconectar)  
                        warp-cli disconnect
                        ;; 
                IP-Publica)  
                        curl ifconfig.me
                        echo ""
                        ;; 
                Salir)  
                        clear
                        exit
                        ;;
                *) 
                        echo "$REPLY no es una operación válida" 
                        ;; 
        esac 
done

echo "----------------------------"
