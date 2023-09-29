#!/bin/bash
#
#


if [ $# -ne 1 ]; then
	echo "Faltan parametros"
	exit 1
fi


if [ ! -d $1 ]; then
	echo "Directorio no existe"
	exit 4
fi

counter=(0 0)
#index 0 = read
#index 1 = write


for files in $(find $1 -maxdepth 1 -type f ); do

	if [ -r $files ] && [ -w $files ]; then

		counter[0]=$(expr ${counter[0]} + 1)
		counter[1]=$(expr ${counter[1]} + 1)
	fi

	


done
echo "Read permisson: ${counter[0]}"
echo "Write permisson: ${counter[1]}"
