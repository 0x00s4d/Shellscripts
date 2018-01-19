#!/bin/bash
read -p "Velha extensão : " old
read -p "Nova extensão : " new
for i in $(ls *."$old")
do
	fn=${i/%$old/$new}
	mv $i $fn
	echo "Movendo $i -> $fn "
done
