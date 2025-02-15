#!/bin/bash

#Tipos de variables: Universal -> Numero, Bool o una cadena
n1=10
n2=7
echo "El valor de n1 es $n1" #$valor de la variable

if [[ $n1 -gt $n2 ]]; then #los espacios importan
	echo "La sentencia es verdadera $n1 > $n2."
else 
	echo "La secuencia es galsa $n1 > $n2."
fi

#Todo programa regresa un valor y si es existe es 0
ls
res=$?
echo "El resultado de la ejecucion fue exitosa es $res."
ls
if [[ $? -eq 0 ]]; then
	echo "La sentencia se ejecuto correctamente."
else
	echo "La sentencia no se ejecuto correctamente."
fi

#Operadores para manipular archivos

file="./file-demo"

if [[ -s $file ]]; then
	echo "El archivo esta vacio."
else
	echo "El archivo contiene algo."
fi

#Operadores logicos 

if [ -r $file ] && [ -x $file ]; then
	echo "El archivo se puede leer y ejecutar"
else
	echo "El archivo no se puede leer ni ejecutar"
fi

#Control case 


case $1 in 
	hola )
		echo "Bienvenido"
	;;
	adios)
		echo "Adios"
	;;
	*) 
		echo "No entiendo lo que dices"
	;;
esac

#Estructuras iterativas
user=""
while [[ $user != "admin" ]]; do
	read -p "Cual es tu usuario?" user 
done

#For

for i in {1..5}; do
	echo "El numero es $i"
done

for ((i=0; i<=5; i++)); do
	echo "* El numero es $i"
done

invitados=(pedro juan david maria lulu ivan)
for invitado in ${invitados[@]}; do 
	echo "Hola $invitado"
done

#Funciones
suma(){
	echo "Hola desde la funcion suma"
}

resta(){
	echo $(( $1 - $2))
}

suma
total=$(resta 9 4)
echo "El total es $total"


