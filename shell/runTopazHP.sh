#!/bin/bash
SIMULATIONS=`cat simulations.txt`
mkdir results
for i in $SIMULATIONS; do
	for j in `seq 1 9`; do
		cd results
		rm ${i}_HOT-SPOT_load_0.${j}.txt
		cd ..
		./TPZSimul -s $i -c 500000 -l 0.$j > ${i}_HOT-SPOT_load_0.$j.txt
		mv ${i}_HOT-SPOT_load_0.$j.txt results
	done
done
