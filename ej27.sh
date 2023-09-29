#!/bin/bash
#
#

inicializar(){
	array=()
}


agregar_elem(){

	if [ $# -ne 1 ]; then
		echo "Falta el elemento a agregar"
		exit 1
	fi

	size=${#array[@]}
	array[$size]=$1


}


eliminar_elem(){

	if [ $# -ne 1 ]; then
		echo "Falta la posicion del elemento a borrar"
		exit 2
	fi

	if [ ! -z ${array[$1]} ]; then
		unset array[$1]
		array=(${array[@]})
	fi


}



longitud(){

	echo ${#array[@]}

}


imprimir(){
	
	echo ${array[@]}
}


inicializar_Con_Valores(){

	
	if [ $# -ne 2 ]; then
		echo "Faltan parametro/s"
		exit 3
	fi


	array=()


	for ((i=0 ; i < $1;i++)); do

		array[$i]=$2

	done


}

longitud
imprimir
inicializar_Con_Valores 4 255
longitud
imprimir

