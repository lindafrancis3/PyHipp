#!/bin/bash

echo "Number of hkl files"
find . -name "*.hkl" | grep -v -e spiketrain -e mountains | wc -l

echo "Number of mda files"
find mountains -name "firings.mda" | wc -l

echo "Start Times"
head -v -n 1 rplpl-slurm.queue1-dy-r5d2xlarge-1.4*.out
printf "\n"
head -v -n 1 rs3-slurm.queue1-dy-r5d2xlarge-6.7*.out

echo "End Times"
tail -v -n 5 rplpl-slurm.queue1-dy-r5d2xlarge-1.4*.out
printf "\n"
tail -v -n 5 rs3-slurm.queue1-dy-r5d2xlarge-6.7*.out
