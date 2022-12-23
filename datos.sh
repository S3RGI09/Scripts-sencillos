#!/bin/bash

clear
PS3="Selecciona una operación: " 

select opt in kernel User Directorio Red Limpiar salir; 

do 
        case $opt in    
                kernel)   
                        uname
                        ;; 
                User)  
                        whoami
                        ;; 
                Directorio)
                        pwd
                        ;; 
                Red) 
                        ping -c 5 google.es
                        ;; 
                Limpiar)
                        clear
                        ./datos.sh
                        ;;
                salir)  
                        exit
                        ;;
                *) 
                        echo "$REPLY no es una operación válida" 
                        ;; 
        esac 
done
