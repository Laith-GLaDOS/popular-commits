#!/bin/bash

lines=$(cat users.txt)

for line in $lines
do
	./scripts/makecommit.sh $line
done
