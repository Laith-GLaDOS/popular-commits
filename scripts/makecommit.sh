#!/bin/bash

if [ $# -eq 0 ]
  then
    echo "need to provide username as argument"
    exit
fi

git config user.name $1
git config user.email $1@users.noreply.github.com
git config commit.gpgsign false

# start rng generator
rng=$(shuf -er -n8  {A..Z} {a..z} {0..9} | paste -sd "")
# end rng generator

mkdir -p dum
touch dum/$rng
echo "amogus" >> dum/$rng 

git add .
git commit -m "Amogus"

echo Success
