#!/bin/bash
set -euo pipefail

mkdir -p datasets
declare -a YEARS=("2017" "2018" "2019")
declare -a IDS=("0B6ZlG_Eygdj-c1kzcmUxN05VUXM" "1_9On2-nsBQIw3JiY43sWbrF8EjrqrR4U" "1QOmVDpd8hcVYqqUXDXf68UMDWQZP0wQV")
len=${#YEARS[@]}
for (( i=0; i < ${len}; i++ )); do
    YEAR=${YEARS[$i]}
    ID=${IDS[$i]}
    if [[ ! -d "datasets/$YEAR" ]]; then
        echo "Downloading datasets for $YEAR"
        gdown "https://drive.google.com/uc?id=${ID}" -O "datasets/${YEAR}.zip"
        mkdir "datasets/${YEAR}"
        unzip -o "datasets/${YEAR}.zip" -d "datasets/${YEAR}"
        rm "datasets/${YEAR}.zip"
    fi
done
