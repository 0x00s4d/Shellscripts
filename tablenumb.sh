#!/bin/bash

read -p "Digite o número: " num
echo "Tabuada do $num"

for i in {1..10}; do
echo "$i x [$num] = [$(($i*$num))]"
done
