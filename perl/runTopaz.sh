#!/bin/bash
SIMULATIONS=`cat simulations.txt`
TRAFFICPATTERNS=`cat traffic_patterns.txt`
MEASUREMENTS=`cat injection_loads.txt`
mkdir results
for i in $SIMULATIONS; do
	for k in $TRAFFICPATTERNS; do
		for j in $MEASUREMENTS; do
			rm ${i}_${k}_load_${j}.txt
			./TPZSimul -s $i -c 500000 -l $j -t $k > ${i}_${k}_load_${j}.txt
		mv ${i}_${k}_load_${j}.txt results
		done
	done
done
cp -r results ~/Dropbox/tpzsimul/results/10.12
