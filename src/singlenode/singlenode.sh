#!/bin/bash

#SBATCH -A STF019
#SBATCH -J singlenode
#SBATCH -o %x-%j.out
#SBATCH -e %x-%j.err
#SBATCH -t 0:15:00
#SBATCH -p batch
#SBATCH -N 1

module load parallel

srun parallel --jobs 6 ./payload.sh argument_{} :::: input.txt 

