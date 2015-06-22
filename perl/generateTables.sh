#!/bin/bash
SIMULATIONS=`cat simulations.txt`
TRAFFICPATTERNS=`cat traffic_patterns.txt`
MEASUREMENTS=`cat injection_loads.txt`
mkdir tables
for i in $SIMULATIONS; do
	for k in $TRAFFICPATTERNS; do
		for j in $MEASUREMENTS; do
			perl string_manipulator results/${i}_${k}_load_${j}.txt ${i}_${k}_table.csv
		done
	mv ${i}_${k}_table.csv tables
	done
done
