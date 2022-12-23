#!/bin/bash

clear
echo -e "\033[31;1m--------------------------------------------------------------- Admin Red  --------------------------------------------------------------"
echo -e "\033[31;1mSe va a poner en escucha Wlan0: OK"
echo -n "[+] Introduce la puerta de enlace: " && read -r obj
tput setaf 14
PS3="Selecciona un metodo: " 

select opt in iPerf Netstat Arp Ping Traceroute Nmap IP-addr Nslookup Netdiscover salir; 

do 
        case $opt in    
                iPerf)   
                        iperf -s
                        ;; 
                Netstat)  
                        netstat
                        python -c "input('Presiona [ENTER] para continuar ')"
                        clear
                        ./network.sh
                        ;; 
                Arp)
                        arp
                        ;; 
                Ping) 
                        ping -s 40 -i 1 -c 5 $obj
                        ;; 
                Traceroute)
                        traceroute $obj
                        ;; 
                Nmap)
                        nmap -sT -n -Pn -T4 $obj
                        ;; 
                IP-addr)
                        tput setaf 0
                        ip addr show
                        tput setaf 14
                        ;;
                Nslookup)
                        nslookup -type=any $obj
                        ;;
                Netdiscover)
                        sudo netdiscover
                        python -c "input('Presiona [ENTER] para continuar ')"
                        clear
                        ./network.sh
                        ;;
                salir)  
                        exit
                        ;;
                *) 
                        echo "$REPLY no es una operación válida" 
                        ;; 
        esac 
done
