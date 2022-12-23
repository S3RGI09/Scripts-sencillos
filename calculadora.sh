#!/bin/bash 
# Define la lista del menú aqui

clear
date
PS3="Selecciona una operación: " 

select opt in suma resta multiplicar dividir salir; 

do 
	case $opt in 
		suma) 
			read -p "Escribe el primer número: " n1 
			read -p "Escribe el segundo número: " n2 
			echo "$n1 + $n2 = $(($n1+$n2))" 
			clear
			./calculadora.sh
			;; 
		resta) 
			read -p "Escribe el primer número: " n1 
			read -p "Escribe el segundo número: " n2 
			echo "$n1 - $n2 = $(($n1-$n2))" 
			;; 
		multiplicar) 
			read -p "Escribe el primer número: " n1 
			read -p "Escribe el segundo númnero: " n2 
			echo "$n1 * $n2 = $(($n1*$n2))" 
			;; 
		dividir) 
			read -p "Escribe el primer número: " n1 
			read -p "Escrib el segundo número: " n2 
			echo "$n1 / $n2 = $(($n1/$n2))" 
			;; 
		salir) 
			break 
			;; 
		*) 
			echo "$REPLY no es una operación válida" 
			;; 
	esac 
done
