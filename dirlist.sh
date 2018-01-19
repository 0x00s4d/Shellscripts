#!/bin/bash
dir=$1
if [[ $dir == "" ]]; then
	echo "Como usar: ./prova.sh /root"
elif [[ $dir != "" ]]; then
	echo "Procurando diretório..."
	wcdir=$(ls -l $dir/*.* | wc -l)
	echo "O número de arquivos no diretório é: $wcdir"
fi
