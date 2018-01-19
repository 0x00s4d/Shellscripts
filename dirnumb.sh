#!/bin/bash
dir=$1
if [[ $dir == "" ]]; then
	echo "./dirnumb.sh /root"
elif [[ $dir != "" ]]; then
	wcdir=$(ls -l $dir/*.* | wc -l)
	echo "O número de arquivos no diretório é: $wcdir"
fi
