#!/bin/bash

#SBATCH -J multinode
#SBATCH -o %x-%j.out
#SBATCH -e %x-%j.err
#SBATCH -t 0:20:00
#SBATCH -p batch
#SBATCH -N 4
#SBATCH --ntasks-per-node 1

srun --no-kill --ntasks-per-node=1 --wait=0 driver.sh $1 

