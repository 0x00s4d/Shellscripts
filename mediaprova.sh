#!/bin/bash
read n1
read n2
read n3

if [ "$n1" -gt "$n2" ] && [ "$n2" -gt "$n3" ]; then
	media="$n1"+"$n2"
	mediaf="$media"/2
	if [ $mediaf -gt 6 ]; then
		echo "Aprovado."
		echo "Nota 1: $n1"
		echo "Nota 2: $n2"
	else
		echo "Reprovado"
	fi

elif [ "$n2" -gt "$n3" ] && [ $n3 -gt "$n1" ]; then
	media=($n2+$n3)/2
	if [ $media -gt 6 ]; then
		echo "Aprovado."
		echo "Nota 2: $n2"
		echo "Nota 3: $n3"
	else
		echo "Reprovado"
	fi

elif [ "$n1" -gt "$n3" ] && [ $n3 -gt "$n2" ]; then
	media=($n1+$n3)/2
	if [ $media -gt 6 ]; then
		echo "Aprovado."
		echo "Nota 1: $n1"
		echo "Nota 3: $n3"
	else
		echo "Reprovado"
	fi

else 
	echo "Reprovado"
fi








